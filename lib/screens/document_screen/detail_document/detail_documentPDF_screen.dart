import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import '../../../models/document/response/detail_document_respons.dart';
import 'cubit/detail_document_cubit.dart';

class DetailDocumentPDFScreen extends StatefulWidget {
  final String idDoc;
  static BlocProvider<DetailDocumentCubit> provider({required String idDoc}) {
    return BlocProvider(
      create: (context) => DetailDocumentCubit(),
      child: DetailDocumentPDFScreen(
        idDoc: idDoc,
      ),
    );
  }

  const DetailDocumentPDFScreen({super.key, required this.idDoc});

  @override
  State<DetailDocumentPDFScreen> createState() =>
      _DetailDocumentPDFScreenState();
}

class _DetailDocumentPDFScreenState extends State<DetailDocumentPDFScreen>
    with AfterLayoutMixin {
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    context.read<DetailDocumentCubit>().getDocById(idDoc: widget.idDoc);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailDocumentCubit, DetailDocumentState>(
      builder: (context, state) {
        return state.data.detailDocumentResponse != null
            ? Scaffold(
                appBar: AppBar(
                  centerTitle: true,
                  title: Text(
                      state.data.detailDocumentResponse!.resultObj!.title!),
                ),
                body: SfPdfViewer.network(
                  state.data.detailDocumentResponse!.resultObj!.filePath!,
                ),
              )
            : Container();
      },
    );
  }
}
