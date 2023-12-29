import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:open_file/open_file.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'cubit/document_cubit.dart';
import 'detail_document/cubit/detail_document_cubit.dart';

class WordViewer extends StatefulWidget {
  final String idDoc;
  static BlocProvider<DetailDocumentCubit> provider({required String idDoc}) {
    return BlocProvider(
      create: (context) => DetailDocumentCubit(),
      child: WordViewer(
        idDoc: idDoc,
      ),
    );
  }

  const WordViewer({super.key, required this.idDoc});

  @override
  State<WordViewer> createState() => _WordViewerState();
}

class _WordViewerState extends State<WordViewer> with AfterLayoutMixin {
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
                  title: Text(
                      state.data.detailDocumentResponse!.resultObj!.title!),
                ),
                body: WebView(
                  initialUrl:
                      'https://docs.google.com/gview?embedded=true&url=${state.data.detailDocumentResponse!.resultObj!.filePath!.toString()}',
                  javascriptMode: JavascriptMode.unrestricted,
                  zoomEnabled: true,
                ))
            : Container();
      },
    );
  }
}
