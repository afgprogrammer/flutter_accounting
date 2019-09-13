// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moor_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps
class BankCard extends DataClass implements Insertable<BankCard> {
  final int id;
  final String name;
  final String number;
  final String bank;
  final int available;
  final String currency;
  BankCard(
      {@required this.id,
      @required this.name,
      @required this.number,
      @required this.bank,
      @required this.available,
      @required this.currency});
  factory BankCard.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return BankCard(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      name: stringType.mapFromDatabaseResponse(data['${effectivePrefix}name']),
      number:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}number']),
      bank: stringType.mapFromDatabaseResponse(data['${effectivePrefix}bank']),
      available:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}available']),
      currency: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}currency']),
    );
  }
  factory BankCard.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return BankCard(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      number: serializer.fromJson<String>(json['number']),
      bank: serializer.fromJson<String>(json['bank']),
      available: serializer.fromJson<int>(json['available']),
      currency: serializer.fromJson<String>(json['currency']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'number': serializer.toJson<String>(number),
      'bank': serializer.toJson<String>(bank),
      'available': serializer.toJson<int>(available),
      'currency': serializer.toJson<String>(currency),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<BankCard>>(bool nullToAbsent) {
    return BankCardsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      number:
          number == null && nullToAbsent ? const Value.absent() : Value(number),
      bank: bank == null && nullToAbsent ? const Value.absent() : Value(bank),
      available: available == null && nullToAbsent
          ? const Value.absent()
          : Value(available),
      currency: currency == null && nullToAbsent
          ? const Value.absent()
          : Value(currency),
    ) as T;
  }

  BankCard copyWith(
          {int id,
          String name,
          String number,
          String bank,
          int available,
          String currency}) =>
      BankCard(
        id: id ?? this.id,
        name: name ?? this.name,
        number: number ?? this.number,
        bank: bank ?? this.bank,
        available: available ?? this.available,
        currency: currency ?? this.currency,
      );
  @override
  String toString() {
    return (StringBuffer('BankCard(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('number: $number, ')
          ..write('bank: $bank, ')
          ..write('available: $available, ')
          ..write('currency: $currency')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          name.hashCode,
          $mrjc(
              number.hashCode,
              $mrjc(bank.hashCode,
                  $mrjc(available.hashCode, currency.hashCode))))));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is BankCard &&
          other.id == id &&
          other.name == name &&
          other.number == number &&
          other.bank == bank &&
          other.available == available &&
          other.currency == currency);
}

class BankCardsCompanion extends UpdateCompanion<BankCard> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> number;
  final Value<String> bank;
  final Value<int> available;
  final Value<String> currency;
  const BankCardsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.number = const Value.absent(),
    this.bank = const Value.absent(),
    this.available = const Value.absent(),
    this.currency = const Value.absent(),
  });
  BankCardsCompanion copyWith(
      {Value<int> id,
      Value<String> name,
      Value<String> number,
      Value<String> bank,
      Value<int> available,
      Value<String> currency}) {
    return BankCardsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      number: number ?? this.number,
      bank: bank ?? this.bank,
      available: available ?? this.available,
      currency: currency ?? this.currency,
    );
  }
}

class $BankCardsTable extends BankCards
    with TableInfo<$BankCardsTable, BankCard> {
  final GeneratedDatabase _db;
  final String _alias;
  $BankCardsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  GeneratedTextColumn _name;
  @override
  GeneratedTextColumn get name => _name ??= _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn('name', $tableName, false,
        minTextLength: 1, maxTextLength: 50);
  }

  final VerificationMeta _numberMeta = const VerificationMeta('number');
  GeneratedTextColumn _number;
  @override
  GeneratedTextColumn get number => _number ??= _constructNumber();
  GeneratedTextColumn _constructNumber() {
    return GeneratedTextColumn('number', $tableName, false,
        minTextLength: 1, maxTextLength: 50);
  }

  final VerificationMeta _bankMeta = const VerificationMeta('bank');
  GeneratedTextColumn _bank;
  @override
  GeneratedTextColumn get bank => _bank ??= _constructBank();
  GeneratedTextColumn _constructBank() {
    return GeneratedTextColumn('bank', $tableName, false,
        minTextLength: 1, maxTextLength: 50);
  }

  final VerificationMeta _availableMeta = const VerificationMeta('available');
  GeneratedIntColumn _available;
  @override
  GeneratedIntColumn get available => _available ??= _constructAvailable();
  GeneratedIntColumn _constructAvailable() {
    return GeneratedIntColumn(
      'available',
      $tableName,
      false,
    );
  }

  final VerificationMeta _currencyMeta = const VerificationMeta('currency');
  GeneratedTextColumn _currency;
  @override
  GeneratedTextColumn get currency => _currency ??= _constructCurrency();
  GeneratedTextColumn _constructCurrency() {
    return GeneratedTextColumn('currency', $tableName, false,
        minTextLength: 1, maxTextLength: 50);
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, name, number, bank, available, currency];
  @override
  $BankCardsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'bank_cards';
  @override
  final String actualTableName = 'bank_cards';
  @override
  VerificationContext validateIntegrity(BankCardsCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.id.present) {
      context.handle(_idMeta, id.isAcceptableValue(d.id.value, _idMeta));
    } else if (id.isRequired && isInserting) {
      context.missing(_idMeta);
    }
    if (d.name.present) {
      context.handle(
          _nameMeta, name.isAcceptableValue(d.name.value, _nameMeta));
    } else if (name.isRequired && isInserting) {
      context.missing(_nameMeta);
    }
    if (d.number.present) {
      context.handle(
          _numberMeta, number.isAcceptableValue(d.number.value, _numberMeta));
    } else if (number.isRequired && isInserting) {
      context.missing(_numberMeta);
    }
    if (d.bank.present) {
      context.handle(
          _bankMeta, bank.isAcceptableValue(d.bank.value, _bankMeta));
    } else if (bank.isRequired && isInserting) {
      context.missing(_bankMeta);
    }
    if (d.available.present) {
      context.handle(_availableMeta,
          available.isAcceptableValue(d.available.value, _availableMeta));
    } else if (available.isRequired && isInserting) {
      context.missing(_availableMeta);
    }
    if (d.currency.present) {
      context.handle(_currencyMeta,
          currency.isAcceptableValue(d.currency.value, _currencyMeta));
    } else if (currency.isRequired && isInserting) {
      context.missing(_currencyMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  BankCard map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return BankCard.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(BankCardsCompanion d) {
    final map = <String, Variable>{};
    if (d.id.present) {
      map['id'] = Variable<int, IntType>(d.id.value);
    }
    if (d.name.present) {
      map['name'] = Variable<String, StringType>(d.name.value);
    }
    if (d.number.present) {
      map['number'] = Variable<String, StringType>(d.number.value);
    }
    if (d.bank.present) {
      map['bank'] = Variable<String, StringType>(d.bank.value);
    }
    if (d.available.present) {
      map['available'] = Variable<int, IntType>(d.available.value);
    }
    if (d.currency.present) {
      map['currency'] = Variable<String, StringType>(d.currency.value);
    }
    return map;
  }

  @override
  $BankCardsTable createAlias(String alias) {
    return $BankCardsTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(const SqlTypeSystem.withDefaults(), e);
  $BankCardsTable _bankCards;
  $BankCardsTable get bankCards => _bankCards ??= $BankCardsTable(this);
  @override
  List<TableInfo> get allTables => [bankCards];
}
