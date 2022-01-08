.class public Lorg/bitcoinj/store/MySQLFullPrunedBlockStore;
.super Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;
.source "MySQLFullPrunedBlockStore.java"


# static fields
.field private static final CREATE_HEADERS_TABLE:Ljava/lang/String; = "CREATE TABLE headers (\n    hash varbinary(28) NOT NULL,\n    chainwork varbinary(12) NOT NULL,\n    height integer NOT NULL,\n    header varbinary(80) NOT NULL,\n    wasundoable tinyint(1) NOT NULL,\n    CONSTRAINT headers_pk PRIMARY KEY (hash) USING BTREE \n)"

.field private static final CREATE_OPEN_OUTPUT_TABLE:Ljava/lang/String; = "CREATE TABLE openoutputs (\n    hash varbinary(32) NOT NULL,\n    `index` integer NOT NULL,\n    height integer NOT NULL,\n    value bigint NOT NULL,\n    scriptbytes mediumblob NOT NULL,\n    toaddress varchar(35),\n    addresstargetable tinyint(1),\n    coinbase boolean,\n    CONSTRAINT openoutputs_pk PRIMARY KEY (hash, `index`) USING BTREE \n)\n"

.field private static final CREATE_OUTPUTS_ADDRESSTARGETABLE_INDEX:Ljava/lang/String; = "CREATE INDEX openoutputs_addresstargetable_idx ON openoutputs (addresstargetable) USING btree"

.field private static final CREATE_OUTPUTS_ADDRESS_MULTI_INDEX:Ljava/lang/String; = "CREATE INDEX openoutputs_hash_index_height_toaddress_idx ON openoutputs (hash, `index`, height, toaddress) USING btree"

.field private static final CREATE_OUTPUTS_HASH_INDEX:Ljava/lang/String; = "CREATE INDEX openoutputs_hash_idx ON openoutputs (hash) USING btree"

.field private static final CREATE_OUTPUTS_TOADDRESS_INDEX:Ljava/lang/String; = "CREATE INDEX openoutputs_toaddress_idx ON openoutputs (toaddress) USING btree"

.field private static final CREATE_SETTINGS_TABLE:Ljava/lang/String; = "CREATE TABLE settings (\n    name varchar(32) NOT NULL,\n    value blob,\n    CONSTRAINT setting_pk PRIMARY KEY (name)  \n)\n"

.field private static final CREATE_UNDOABLE_TABLE:Ljava/lang/String; = "CREATE TABLE undoableblocks (\n    hash varbinary(28) NOT NULL,\n    height integer NOT NULL,\n    txoutchanges mediumblob,\n    transactions mediumblob,\n    CONSTRAINT undoableblocks_pk PRIMARY KEY (hash) USING BTREE \n)\n"

.field private static final CREATE_UNDOABLE_TABLE_INDEX:Ljava/lang/String; = "CREATE INDEX undoableblocks_height_idx ON undoableblocks (height) USING btree"

.field private static final DATABASE_CONNECTION_URL_PREFIX:Ljava/lang/String; = "jdbc:mysql://"

.field private static final DATABASE_DRIVER_CLASS:Ljava/lang/String; = "com.mysql.jdbc.Driver"

.field private static final DELETE_OPENOUTPUTS_SQL:Ljava/lang/String; = "DELETE FROM openoutputs WHERE hash = ? AND `index`= ?"

.field private static final INSERT_OPENOUTPUTS_SQL:Ljava/lang/String; = "INSERT INTO openoutputs (hash, `index`, height, value, scriptbytes, toaddress, addresstargetable, coinbase) VALUES (?, ?, ?, ?, ?, ?, ?, ?)"

.field private static final MYSQL_DUPLICATE_KEY_ERROR_CODE:Ljava/lang/String; = "23000"

.field private static final SELECT_OPENOUTPUTS_SQL:Ljava/lang/String; = "SELECT height, value, scriptbytes, coinbase, toaddress, addresstargetable FROM openoutputs WHERE hash = ? AND `index` = ?"

.field private static final SELECT_TRANSACTION_OUTPUTS_SQL:Ljava/lang/String; = "SELECT hash, value, scriptbytes, height, `index`, coinbase, toaddress, addresstargetable FROM openoutputs where toaddress = ?"


# direct methods
.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "jdbc:mysql://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v1 .. v7}, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;-><init>(Lorg/bitcoinj/core/NetworkParameters;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getCreateIndexesSQL()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "CREATE INDEX undoableblocks_height_idx ON undoableblocks (height) USING btree"

    .line 139
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "CREATE INDEX openoutputs_hash_index_height_toaddress_idx ON openoutputs (hash, `index`, height, toaddress) USING btree"

    .line 140
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "CREATE INDEX openoutputs_addresstargetable_idx ON openoutputs (addresstargetable) USING btree"

    .line 141
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "CREATE INDEX openoutputs_hash_idx ON openoutputs (hash) USING btree"

    .line 142
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "CREATE INDEX openoutputs_toaddress_idx ON openoutputs (toaddress) USING btree"

    .line 143
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected getCreateSchemeSQL()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 150
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getCreateTablesSQL()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "CREATE TABLE settings (\n    name varchar(32) NOT NULL,\n    value blob,\n    CONSTRAINT setting_pk PRIMARY KEY (name)  \n)\n"

    .line 129
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "CREATE TABLE headers (\n    hash varbinary(28) NOT NULL,\n    chainwork varbinary(12) NOT NULL,\n    height integer NOT NULL,\n    header varbinary(80) NOT NULL,\n    wasundoable tinyint(1) NOT NULL,\n    CONSTRAINT headers_pk PRIMARY KEY (hash) USING BTREE \n)"

    .line 130
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "CREATE TABLE undoableblocks (\n    hash varbinary(28) NOT NULL,\n    height integer NOT NULL,\n    txoutchanges mediumblob,\n    transactions mediumblob,\n    CONSTRAINT undoableblocks_pk PRIMARY KEY (hash) USING BTREE \n)\n"

    .line 131
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "CREATE TABLE openoutputs (\n    hash varbinary(32) NOT NULL,\n    `index` integer NOT NULL,\n    height integer NOT NULL,\n    value bigint NOT NULL,\n    scriptbytes mediumblob NOT NULL,\n    toaddress varchar(35),\n    addresstargetable tinyint(1),\n    coinbase boolean,\n    CONSTRAINT openoutputs_pk PRIMARY KEY (hash, `index`) USING BTREE \n)\n"

    .line 132
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected getDatabaseDriverClass()Ljava/lang/String;
    .locals 1

    const-string v0, "com.mysql.jdbc.Driver"

    return-object v0
.end method

.method protected getDeleteOpenoutputsSQL()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM openoutputs WHERE hash = ? AND `index`= ?"

    return-object v0
.end method

.method protected getDuplicateKeyErrorCode()Ljava/lang/String;
    .locals 1

    const-string v0, "23000"

    return-object v0
.end method

.method protected getInsertOpenoutputsSQL()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT INTO openoutputs (hash, `index`, height, value, scriptbytes, toaddress, addresstargetable, coinbase) VALUES (?, ?, ?, ?, ?, ?, ?, ?)"

    return-object v0
.end method

.method protected getSelectOpenoutputsSQL()Ljava/lang/String;
    .locals 1

    const-string v0, "SELECT height, value, scriptbytes, coinbase, toaddress, addresstargetable FROM openoutputs WHERE hash = ? AND `index` = ?"

    return-object v0
.end method

.method protected getTrasactionOutputSelectSQL()Ljava/lang/String;
    .locals 1

    const-string v0, "SELECT hash, value, scriptbytes, height, `index`, coinbase, toaddress, addresstargetable FROM openoutputs where toaddress = ?"

    return-object v0
.end method
