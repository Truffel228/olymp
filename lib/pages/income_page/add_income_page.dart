import 'package:fin_assistant/app_theme.dart';
import 'package:fin_assistant/build_context_ext.dart';
import 'package:fin_assistant/models/income.dart';
import 'package:fin_assistant/widgets_global/main_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

class AddIncomePage extends StatefulWidget {
  const AddIncomePage({super.key});

  @override
  State<AddIncomePage> createState() => _AddIncomePageState();
}

class _AddIncomePageState extends State<AddIncomePage> {
  final TextEditingController _incomeController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                  top: 16,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      InkWell(
                        radius: 16,
                        onTap: () => Navigator.of(context).pop(null),
                        child: const Icon(
                          Icons.chevron_left,
                          color: AppTheme.blackFontColor,
                          size: 24,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Add Income',
                        style: context.textTheme.displaySmall,
                      )
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    '\$',
                    style: TextStyle(
                      color: AppTheme.blackFontColor,
                      fontSize: 32,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(
                    width: 250,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      autofocus: true,
                      controller: _incomeController,
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                      ],
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                      ),
                      style: const TextStyle(
                        color: AppTheme.blackFontColor,
                        fontSize: 32,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Container(
                        decoration: const BoxDecoration(color: AppTheme.grey),
                        child: TextField(
                          controller: _descriptionController,
                          decoration: InputDecoration(
                            hintText: 'Income description',
                            hintStyle: context.textTheme.titleMedium,
                            border: const OutlineInputBorder(
                                borderSide: BorderSide.none),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 14),
                    MainButton(
                      width: MediaQuery.of(context).size.width * 0.6,
                      title: 'Add income',
                      onTap: () {
                        final amount =
                            int.tryParse(_incomeController.text) ?? 0;

                        if (amount == 0) {
                          context.pop();
                        }

                        final income = Income(
                          amount,
                          _descriptionController.text,
                          DateTime.now(),
                        );

                        context.pop(income);
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
