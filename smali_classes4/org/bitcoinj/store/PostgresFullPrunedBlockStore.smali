.class public Lorg/bitcoinj/store/PostgresFullPrunedBlockStore;
.super Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;
.source "PostgresFullPrunedBlockStore.java"


# static fields
.field private static final CREATE_HEADERS_TABLE:Ljava/lang/String; = "CREATE TABLE headers (\n    hash bytea NOT NULL,\n    chainwork bytea NOT NULL,\n    height integer NOT NULL,\n    header bytea NOT NULL,\n    wasundoable boolean NOT NULL,\n    CONSTRAINT headers_pk PRIMARY KEY (hash)\n)\n"

.field private static final CREATE_OPEN_OUTPUT_TABLE:Ljava/lang/String; = "CREATE TABLE openoutputs (\n    hash bytea NOT NULL,\n    index integer NOT NULL,\n    height integer NOT NULL,\n    value bigint NOT NULL,\n    scriptbytes bytea NOT NULL,\n    toaddress character varying(35),\n    addresstargetable smallint,\n    coinbase boolean,\n    CONSTRAINT openoutputs_pk PRIMARY KEY (hash,index)\n)\n"

.field private static final CREATE_OUTPUTS_ADDRESSTARGETABLE_INDEX:Ljava/lang/String; = "CREATE INDEX openoutputs_addresstargetable_idx ON openoutputs USING btree (addresstargetable)"

.field private static final CREATE_OUTPUTS_ADDRESS_MULTI_INDEX:Ljava/lang/String; = "CREATE INDEX openoutputs_hash_index_num_height_toaddress_idx ON openoutputs USING btree (hash, index, height, toaddress)"

.field private static final CREATE_OUTPUTS_HASH_INDEX:Ljava/lang/String; = "CREATE INDEX openoutputs_hash_idx ON openoutputs USING btree (hash)"

.field private static final CREATE_OUTPUTS_TOADDRESS_INDEX:Ljava/lang/String; = "CREATE INDEX openoutputs_toaddress_idx ON openoutputs USING btree (toaddress)"

.field private static final CREATE_SETTINGS_TABLE:Ljava/lang/String; = "CREATE TABLE settings (\n    name character varying(32) NOT NULL,\n    value bytea,\n    CONSTRAINT setting_pk PRIMARY KEY (name)\n)\n"

.field private static final CREATE_UNDOABLE_TABLE:Ljava/lang/String; = "CREATE TABLE undoableblocks (\n    hash bytea NOT NULL,\n    height integer NOT NULL,\n    txoutchanges bytea,\n    transactions bytea,\n    CONSTRAINT undoableblocks_pk PRIMARY KEY (hash)\n)\n"

.field private static final CREATE_UNDOABLE_TABLE_INDEX:Ljava/lang/String; = "CREATE INDEX undoableblocks_height_idx ON undoableBlocks USING btree (height)"

.field private static final DATABASE_CONNECTION_URL_PREFIX:Ljava/lang/String; = "jdbc:postgresql://"

.field private static final DATABASE_DRIVER_CLASS:Ljava/lang/String; = "org.postgresql.Driver"

.field private static final POSTGRES_DUPLICATE_KEY_ERROR_CODE:Ljava/lang/String; = "23505"

.field private static final SELECT_UNDOABLEBLOCKS_EXISTS_SQL:Ljava/lang/String; = "select 1 from undoableblocks where hash = ?"

.field private static final log:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-class v0, Lorg/bitcoinj/store/PostgresFullPrunedBlockStore;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/store/PostgresFullPrunedBlockStore;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "jdbc:postgresql://"

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

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p7    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "jdbc:postgresql://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

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

    const-string v1, "CREATE INDEX undoableblocks_height_idx ON undoableBlocks USING btree (height)"

    .line 147
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "CREATE INDEX openoutputs_hash_index_num_height_toaddress_idx ON openoutputs USING btree (hash, index, height, toaddress)"

    .line 148
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "CREATE INDEX openoutputs_addresstargetable_idx ON openoutputs USING btree (addresstargetable)"

    .line 149
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "CREATE INDEX openoutputs_hash_idx ON openoutputs USING btree (hash)"

    .line 150
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "CREATE INDEX openoutputs_toaddress_idx ON openoutputs USING btree (toaddress)"

    .line 151
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected getCreateSchemeSQL()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE SCHEMA IF NOT EXISTS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/bitcoinj/store/PostgresFullPrunedBlockStore;->schemaName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set search_path to \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/bitcoinj/store/PostgresFullPrunedBlockStore;->schemaName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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

    const-string v1, "CREATE TABLE settings (\n    name character varying(32) NOT NULL,\n    value bytea,\n    CONSTRAINT setting_pk PRIMARY KEY (name)\n)\n"

    .line 137
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "CREATE TABLE headers (\n    hash bytea NOT NULL,\n    chainwork bytea NOT NULL,\n    height integer NOT NULL,\n    header bytea NOT NULL,\n    wasundoable boolean NOT NULL,\n    CONSTRAINT headers_pk PRIMARY KEY (hash)\n)\n"

    .line 138
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "CREATE TABLE undoableblocks (\n    hash bytea NOT NULL,\n    height integer NOT NULL,\n    txoutchanges bytea,\n    transactions bytea,\n    CONSTRAINT undoableblocks_pk PRIMARY KEY (hash)\n)\n"

    .line 139
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "CREATE TABLE openoutputs (\n    hash bytea NOT NULL,\n    index integer NOT NULL,\n    height integer NOT NULL,\n    value bigint NOT NULL,\n    scriptbytes bytea NOT NULL,\n    toaddress character varying(35),\n    addresstargetable smallint,\n    coinbase boolean,\n    CONSTRAINT openoutputs_pk PRIMARY KEY (hash,index)\n)\n"

    .line 140
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected getDatabaseDriverClass()Ljava/lang/String;
    .locals 1

    const-string v0, "org.postgresql.Driver"

    return-object v0
.end method

.method protected getDuplicateKeyErrorCode()Ljava/lang/String;
    .locals 1

    const-string v0, "23505"

    return-object v0
.end method

.method public put(Lorg/bitcoinj/core/StoredBlock;Lorg/bitcoinj/core/StoredUndoableBlock;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    .line 170
    invoke-virtual {p0}, Lorg/bitcoinj/store/PostgresFullPrunedBlockStore;->maybeConnect()V

    const/16 v0, 0x1c

    new-array v1, v0, [B

    .line 173
    invoke-virtual {p1}, Lorg/bitcoinj/core/StoredBlock;->getHeader()Lorg/bitcoinj/core/Block;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bitcoinj/core/Block;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bitcoinj/core/Sha256Hash;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 174
    invoke-virtual {p1}, Lorg/bitcoinj/core/StoredBlock;->getHeight()I

    move-result v0

    .line 178
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 179
    invoke-virtual {p2}, Lorg/bitcoinj/core/StoredUndoableBlock;->getTxOutChanges()Lorg/bitcoinj/core/TransactionOutputChanges;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 180
    invoke-virtual {p2}, Lorg/bitcoinj/core/StoredUndoableBlock;->getTxOutChanges()Lorg/bitcoinj/core/TransactionOutputChanges;

    move-result-object p2

    invoke-virtual {p2, v2}, Lorg/bitcoinj/core/TransactionOutputChanges;->serializeToStream(Ljava/io/OutputStream;)V

    .line 181
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    goto :goto_1

    .line 183
    :cond_0
    invoke-virtual {p2}, Lorg/bitcoinj/core/StoredUndoableBlock;->getTransactions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    and-int/lit16 v6, v4, 0xff

    .line 184
    invoke-virtual {v2, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    shr-int/lit8 v6, v4, 0x8

    and-int/lit16 v6, v6, 0xff

    .line 185
    invoke-virtual {v2, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    shr-int/lit8 v6, v4, 0x10

    and-int/lit16 v6, v6, 0xff

    .line 186
    invoke-virtual {v2, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    shr-int/lit8 v4, v4, 0x18

    and-int/lit16 v4, v4, 0xff

    .line 187
    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 188
    invoke-virtual {p2}, Lorg/bitcoinj/core/StoredUndoableBlock;->getTransactions()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bitcoinj/core/Transaction;

    .line 189
    invoke-virtual {v4, v2}, Lorg/bitcoinj/core/Transaction;->bitcoinSerialize(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 190
    :cond_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    move-object v11, v5

    move-object v5, p2

    move-object p2, v11

    .line 192
    :goto_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 199
    :try_start_1
    sget-object v2, Lorg/bitcoinj/store/PostgresFullPrunedBlockStore;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 200
    sget-object v2, Lorg/bitcoinj/store/PostgresFullPrunedBlockStore;->log:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Looking for undoable block with hash: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lorg/bitcoinj/core/Utils;->HEX:Lcom/google/common/io/BaseEncoding;

    invoke-virtual {v6, v1}, Lcom/google/common/io/BaseEncoding;->encode([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 202
    :cond_2
    iget-object v2, p0, Lorg/bitcoinj/store/PostgresFullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/sql/Connection;

    const-string v4, "select 1 from undoableblocks where hash = ?"

    invoke-interface {v2, v4}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v2

    const/4 v4, 0x1

    .line 203
    invoke-interface {v2, v4, v1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 205
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v6

    .line 206
    invoke-interface {v6}, Ljava/sql/ResultSet;->next()Z

    move-result v6

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, -0x2

    if-eqz v6, :cond_5

    .line 209
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->close()V

    .line 213
    iget-object p1, p0, Lorg/bitcoinj/store/PostgresFullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    .line 214
    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/sql/Connection;

    invoke-virtual {p0}, Lorg/bitcoinj/store/PostgresFullPrunedBlockStore;->getUpdateUndoableBlocksSQL()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1

    .line 215
    invoke-interface {p1, v7, v1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 217
    sget-object v0, Lorg/bitcoinj/store/PostgresFullPrunedBlockStore;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 218
    sget-object v0, Lorg/bitcoinj/store/PostgresFullPrunedBlockStore;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating undoable block with hash: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lorg/bitcoinj/core/Utils;->HEX:Lcom/google/common/io/BaseEncoding;

    invoke-virtual {v3, v1}, Lcom/google/common/io/BaseEncoding;->encode([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    :cond_3
    if-nez v5, :cond_4

    .line 221
    invoke-interface {p1, v4, p2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 222
    invoke-interface {p1, v8, v9}, Ljava/sql/PreparedStatement;->setNull(II)V

    goto :goto_2

    .line 224
    :cond_4
    invoke-interface {p1, v4, v9}, Ljava/sql/PreparedStatement;->setNull(II)V

    .line 225
    invoke-interface {p1, v8, v5}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 227
    :goto_2
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 228
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->close()V

    return-void

    .line 233
    :cond_5
    iget-object v2, p0, Lorg/bitcoinj/store/PostgresFullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    .line 234
    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/sql/Connection;

    invoke-virtual {p0}, Lorg/bitcoinj/store/PostgresFullPrunedBlockStore;->getInsertUndoableBlocksSQL()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v2

    .line 235
    invoke-interface {v2, v4, v1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 236
    invoke-interface {v2, v8, v0}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 238
    sget-object v6, Lorg/bitcoinj/store/PostgresFullPrunedBlockStore;->log:Lorg/slf4j/Logger;

    invoke-interface {v6}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 239
    sget-object v6, Lorg/bitcoinj/store/PostgresFullPrunedBlockStore;->log:Lorg/slf4j/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Inserting undoable block with hash: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lorg/bitcoinj/core/Utils;->HEX:Lcom/google/common/io/BaseEncoding;

    invoke-virtual {v10, v1}, Lcom/google/common/io/BaseEncoding;->encode([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " at height "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    :cond_6
    if-nez v5, :cond_7

    .line 242
    invoke-interface {v2, v7, p2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 243
    invoke-interface {v2, v3, v9}, Ljava/sql/PreparedStatement;->setNull(II)V

    goto :goto_3

    .line 245
    :cond_7
    invoke-interface {v2, v7, v9}, Ljava/sql/PreparedStatement;->setNull(II)V

    .line 246
    invoke-interface {v2, v3, v5}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 248
    :goto_3
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 249
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->close()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 251
    :try_start_2
    invoke-virtual {p0, p1, v4}, Lorg/bitcoinj/store/PostgresFullPrunedBlockStore;->putUpdateStoredBlock(Lorg/bitcoinj/core/StoredBlock;Z)V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 253
    :try_start_3
    new-instance p2, Lorg/bitcoinj/store/BlockStoreException;

    invoke-direct {p2, p1}, Lorg/bitcoinj/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception p1

    .line 256
    invoke-virtual {p1}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object p2

    const-string v0, "23505"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    :goto_4
    return-void

    .line 257
    :cond_8
    new-instance p2, Lorg/bitcoinj/store/BlockStoreException;

    invoke-direct {p2, p1}, Lorg/bitcoinj/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    .line 194
    new-instance p2, Lorg/bitcoinj/store/BlockStoreException;

    invoke-direct {p2, p1}, Lorg/bitcoinj/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
