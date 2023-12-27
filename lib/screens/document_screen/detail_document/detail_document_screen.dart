import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import '../../../models/document/response/detail_document_respons.dart';
import 'cubit/detail_document_cubit.dart';

class DetailDocumentScreen extends StatefulWidget {
  final String idDoc;
  static BlocProvider<DetailDocumentCubit> provider({required String idDoc}) {
    return BlocProvider(
      create: (context) => DetailDocumentCubit(),
      child: DetailDocumentScreen(
        idDoc: idDoc,
      ),
    );
  }

  const DetailDocumentScreen({super.key, required this.idDoc});

  @override
  State<DetailDocumentScreen> createState() => _DetailDocumentScreenState();
}

class _DetailDocumentScreenState extends State<DetailDocumentScreen>
    with AfterLayoutMixin {
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    context.read<DetailDocumentCubit>().getDocById(idDoc: widget.idDoc);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("PDF View"),
        ),
        body: BlocBuilder<DetailDocumentCubit, DetailDocumentState>(
          builder: (context, state) {
            return state.data.detailDocumentResponse != null
                ? SfPdfViewer.network(
                    state.data.detailDocumentResponse!.resultObj!.filePath!,
                  )
                : Container();
          },
        ));
  }
}
