import 'dart:io';


import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import 'package:syncfusion_flutter_pdf/pdf.dart';

class test extends StatelessWidget {
  PdfViewerController _pdfViewerController;
  PdfDocument document; // PdfDocument(inputBytes: asset);
  PdfBookmark pdfBookmark;

  @override
  void initState() {
    _pdfViewerController = PdfViewerController();
    // super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Syncfusion Flutter PdfViewer'),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.arrow_drop_down_circle,
                color: Colors.white,
              ),
              onPressed: () {
                _pdfViewerController.jumpToBookmark(pdfBookmark);
              },
            ),
          ],
        ),
        body: SfPdfViewer.asset(
          'assets/quran.pdf',
          controller: _pdfViewerController,
          onDocumentLoaded: (PdfDocumentLoadedDetails details) {
            pdfBookmark = details.document.bookmarks[0];
          },
        ),
      ),
    );
  }
}
