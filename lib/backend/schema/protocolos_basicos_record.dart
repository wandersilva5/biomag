import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProtocolosBasicosRecord extends FirestoreRecord {
  ProtocolosBasicosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "par" field.
  String? _par;
  String get par => _par ?? '';
  bool hasPar() => _par != null;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "classificacao" field.
  String? _classificacao;
  String get classificacao => _classificacao ?? '';
  bool hasClassificacao() => _classificacao != null;

  // "imagem" field.
  String? _imagem;
  String get imagem => _imagem ?? '';
  bool hasImagem() => _imagem != null;

  void _initializeFields() {
    _par = snapshotData['par'] as String?;
    _nome = snapshotData['nome'] as String?;
    _classificacao = snapshotData['classificacao'] as String?;
    _imagem = snapshotData['imagem'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('protocolosBasicos');

  static Stream<ProtocolosBasicosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProtocolosBasicosRecord.fromSnapshot(s));

  static Future<ProtocolosBasicosRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => ProtocolosBasicosRecord.fromSnapshot(s));

  static ProtocolosBasicosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProtocolosBasicosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProtocolosBasicosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProtocolosBasicosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProtocolosBasicosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProtocolosBasicosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProtocolosBasicosRecordData({
  String? par,
  String? nome,
  String? classificacao,
  String? imagem,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'par': par,
      'nome': nome,
      'classificacao': classificacao,
      'imagem': imagem,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProtocolosBasicosRecordDocumentEquality
    implements Equality<ProtocolosBasicosRecord> {
  const ProtocolosBasicosRecordDocumentEquality();

  @override
  bool equals(ProtocolosBasicosRecord? e1, ProtocolosBasicosRecord? e2) {
    return e1?.par == e2?.par &&
        e1?.nome == e2?.nome &&
        e1?.classificacao == e2?.classificacao &&
        e1?.imagem == e2?.imagem;
  }

  @override
  int hash(ProtocolosBasicosRecord? e) =>
      const ListEquality().hash([e?.par, e?.nome, e?.classificacao, e?.imagem]);

  @override
  bool isValidKey(Object? o) => o is ProtocolosBasicosRecord;
}
