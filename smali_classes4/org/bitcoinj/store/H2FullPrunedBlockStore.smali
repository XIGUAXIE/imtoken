.class public Lorg/bitcoinj/store/H2FullPrunedBlockStore;
.super Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;
.source "H2FullPrunedBlockStore.java"


# static fields
.field private static final CREATE_HEADERS_TABLE:Ljava/lang/String; = "CREATE TABLE headers ( hash BINARY(28) NOT NULL CONSTRAINT headers_pk PRIMARY KEY,chainwork BLOB NOT NULL,height INT NOT NULL,header BLOB NOT NULL,wasundoable BOOL NOT NULL)"

.field private static final CREATE_OPEN_OUTPUT_TABLE:Ljava/lang/String; = "CREATE TABLE openoutputs (hash BINARY(32) NOT NULL,index INT NOT NULL,height INT NOT NULL,value BIGINT NOT NULL,scriptbytes BLOB NOT NULL,toaddress VARCHAR(35),addresstargetable TINYINT,coinbase BOOLEAN,PRIMARY KEY (hash, index),)"

.field private static final CREATE_OUTPUTS_ADDRESSTARGETABLE_INDEX:Ljava/lang/String; = "CREATE INDEX openoutputs_addresstargetable_idx ON openoutputs (addresstargetable)"

.field private static final CREATE_OUTPUTS_ADDRESS_MULTI_INDEX:Ljava/lang/String; = "CREATE INDEX openoutputs_hash_index_height_toaddress_idx ON openoutputs (hash, index, height, toaddress)"

.field private static final CREATE_OUTPUTS_HASH_INDEX:Ljava/lang/String; = "CREATE INDEX openoutputs_hash_idx ON openoutputs (hash)"

.field private static final CREATE_OUTPUTS_TOADDRESS_INDEX:Ljava/lang/String; = "CREATE INDEX openoutputs_toaddress_idx ON openoutputs (toaddress)"

.field private static final CREATE_SETTINGS_TABLE:Ljava/lang/String; = "CREATE TABLE settings ( name VARCHAR(32) NOT NULL CONSTRAINT settings_pk PRIMARY KEY,value BLOB)"

.field private static final CREATE_UNDOABLE_TABLE:Ljava/lang/String; = "CREATE TABLE undoableblocks ( hash BINARY(28) NOT NULL CONSTRAINT undoableblocks_pk PRIMARY KEY,height INT NOT NULL,txoutchanges BLOB,transactions BLOB)"

.field private static final CREATE_UNDOABLE_TABLE_INDEX:Ljava/lang/String; = "CREATE INDEX undoableblocks_height_idx ON undoableblocks (height)"

.field private static final DATABASE_CONNECTION_URL_PREFIX:Ljava/lang/String; = "jdbc:h2:"

.field private static final DATABASE_DRIVER_CLASS:Ljava/lang/String; = "org.h2.Driver"

.field private static final H2_DUPLICATE_KEY_ERROR_CODE:Ljava/lang/String; = "23505"


# direct methods
.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    .line 104
    invoke-direct/range {v0 .. v5}, Lorg/bitcoinj/store/H2FullPrunedBlockStore;-><init>(Lorg/bitcoinj/core/NetworkParameters;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    .line 119
    invoke-direct {p0, p1, p2, p3}, Lorg/bitcoinj/store/H2FullPrunedBlockStore;-><init>(Lorg/bitcoinj/core/NetworkParameters;Ljava/lang/String;I)V

    .line 121
    :try_start_0
    iget-object p1, p0, Lorg/bitcoinj/store/H2FullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/sql/Connection;

    invoke-interface {p1}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object p1

    .line 122
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "SET CACHE_SIZE "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I

    .line 123
    invoke-interface {p1}, Ljava/sql/Statement;->close()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 125
    new-instance p2, Lorg/bitcoinj/store/BlockStoreException;

    invoke-direct {p2, p1}, Lorg/bitcoinj/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "jdbc:h2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ";create=true;LOCK_TIMEOUT=60000;DB_CLOSE_ON_EXIT=FALSE"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v4, p5

    move-object v5, p3

    move-object v6, p4

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

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "CREATE INDEX undoableblocks_height_idx ON undoableblocks (height)"

    .line 147
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "CREATE INDEX openoutputs_hash_index_height_toaddress_idx ON openoutputs (hash, index, height, toaddress)"

    .line 148
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "CREATE INDEX openoutputs_addresstargetable_idx ON openoutputs (addresstargetable)"

    .line 149
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "CREATE INDEX openoutputs_hash_idx ON openoutputs (hash)"

    .line 150
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "CREATE INDEX openoutputs_toaddress_idx ON openoutputs (toaddress)"

    .line 151
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

    .line 158
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

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "CREATE TABLE settings ( name VARCHAR(32) NOT NULL CONSTRAINT settings_pk PRIMARY KEY,value BLOB)"

    .line 137
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "CREATE TABLE headers ( hash BINARY(28) NOT NULL CONSTRAINT headers_pk PRIMARY KEY,chainwork BLOB NOT NULL,height INT NOT NULL,header BLOB NOT NULL,wasundoable BOOL NOT NULL)"

    .line 138
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "CREATE TABLE undoableblocks ( hash BINARY(28) NOT NULL CONSTRAINT undoableblocks_pk PRIMARY KEY,height INT NOT NULL,txoutchanges BLOB,transactions BLOB)"

    .line 139
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "CREATE TABLE openoutputs (hash BINARY(32) NOT NULL,index INT NOT NULL,height INT NOT NULL,value BIGINT NOT NULL,scriptbytes BLOB NOT NULL,toaddress VARCHAR(35),addresstargetable TINYINT,coinbase BOOLEAN,PRIMARY KEY (hash, index),)"

    .line 140
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected getDatabaseDriverClass()Ljava/lang/String;
    .locals 1

    const-string v0, "org.h2.Driver"

    return-object v0
.end method

.method protected getDuplicateKeyErrorCode()Ljava/lang/String;
    .locals 1

    const-string v0, "23505"

    return-object v0
.end method
