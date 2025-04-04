import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nok_test/auth/bloc/auth_bloc/auth_bloc.dart';
import 'package:nok_test/common/widgets/no_connection_banner.dart';
import 'package:nok_test/injection.dart';
import 'package:nok_test/qualification_shop/bloc/user_purchases_bloc/user_purchases_bloc.dart';
import 'package:nok_test/qualification_shop/ui/qualification_shop_list_item.dart';
import 'package:nok_test/specializations/bloc/specializations_bloc/specializations_bloc.dart';
import 'package:nok_test/styles/app_text_styles.dart';
import 'package:nok_test/utils/list_separated_extension.dart';

@RoutePage()
class QualificationShopListPage extends StatelessWidget implements AutoRouteWrapper {
  const QualificationShopListPage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    final user = context.watch<AuthBloc>().state.user!;

    return BlocProvider(
      create: (context) => getIt<UserPurchasesBloc>()
        ..add(UserPurchasesEvent.requested(
          userId: user.uid,
        )),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    final user = context.watch<AuthBloc>().state.user!;

    final userPurchasedQualificationIds = context.watch<UserPurchasesBloc>().state.maybeWhen(
          success: (qualificationIds) => qualificationIds,
          orElse: () => [],
        );

    return Scaffold(
      appBar: AppBar(
        leading: AutoLeadingButton(),
        title: Text('Магазин'),
      ),
      body: BlocBuilder<SpecializationsBloc, SpecializationsState>(
        builder: (context, state) {
          return state.when(
            loading: () => Center(
              child: CircularProgressIndicator(),
            ),
            failure: (message) {
              return NoConnectionBanner(
                onRetry: () {
                  context.read<SpecializationsBloc>().add(SpecializationsEvent.started());
                },
              );
            },
            success: (specializations) {
              final qualifications =
                  specializations.expand((s) => s.qualifications.map((q) => (s, q)));
              return ListView(
                padding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
                children: [
                  BlocBuilder<UserPurchasesBloc, UserPurchasesState>(
                    builder: (context, state) {
                      return state.maybeWhen(
                        success: (qualificationIds) => qualificationIds.isEmpty
                            ? Column(
                                children: [
                                  SizedBox(height: 16),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      'У вас еще нет ни одной покупки',
                                      style: AppTextStyles.title3,
                                    ),
                                  ),
                                  SizedBox(height: 40),
                                ],
                              )
                            : SizedBox.shrink(),
                        failure: (message) {
                          return Column(
                            children: [
                              Text('Ошибка загрузки списка покупок'),
                              FilledButton(
                                onPressed: () {
                                  context
                                      .read<UserPurchasesBloc>()
                                      .add(UserPurchasesEvent.requested(userId: user.uid));
                                },
                                child: Text('Повторить'),
                              ),
                              SizedBox(height: 40),
                            ],
                          );
                        },
                        orElse: () => Column(
                          children: [
                            Center(
                              child: CircularProgressIndicator(),
                            ),
                            SizedBox(height: 40),
                          ],
                        ),
                      );
                    },
                  ),
                  ...qualifications
                      .map<Widget>((q) => QualificationShopListItem(
                            specialization: q.$1,
                            qualification: q.$2,
                            bought: userPurchasedQualificationIds.contains(q.$2.id),
                          ))
                      .toList()
                      .separatedBy(SizedBox(height: 16)),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
