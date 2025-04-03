import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nok_test/common/widgets/no_connection_banner.dart';
import 'package:nok_test/qualification_shop/ui/qualification_shop_list_item.dart';
import 'package:nok_test/specializations/bloc/specializations_bloc/specializations_bloc.dart';
import 'package:nok_test/utils/list_separated_extension.dart';

@RoutePage()
class QualificationShopListPage extends StatelessWidget {
  const QualificationShopListPage({super.key});

  @override
  Widget build(BuildContext context) {
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
                children: qualifications
                    .map<Widget>((q) => QualificationShopListItem(
                          specialization: q.$1,
                          qualification: q.$2,
                        ))
                    .toList()
                    .separatedBy(SizedBox(height: 16)),
              );
            },
          );
        },
      ),
    );
  }
}
