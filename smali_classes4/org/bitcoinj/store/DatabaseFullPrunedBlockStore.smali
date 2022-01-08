.class public abstract Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;
.super Ljava/lang/Object;
.source "DatabaseFullPrunedBlockStore.java"

# interfaces
.implements Lorg/bitcoinj/store/FullPrunedBlockStore;


# static fields
.field private static final CHAIN_HEAD_SETTING:Ljava/lang/String; = "chainhead"

.field private static final DELETE_OPENOUTPUTS_SQL:Ljava/lang/String; = "DELETE FROM openoutputs WHERE hash = ? AND index = ?"

.field private static final DELETE_UNDOABLEBLOCKS_SQL:Ljava/lang/String; = "DELETE FROM undoableblocks WHERE height <= ?"

.field private static final DROP_HEADERS_TABLE:Ljava/lang/String; = "DROP TABLE headers"

.field private static final DROP_OPEN_OUTPUT_TABLE:Ljava/lang/String; = "DROP TABLE openoutputs"

.field private static final DROP_SETTINGS_TABLE:Ljava/lang/String; = "DROP TABLE settings"

.field private static final DROP_UNDOABLE_TABLE:Ljava/lang/String; = "DROP TABLE undoableblocks"

.field private static final INSERT_HEADERS_SQL:Ljava/lang/String; = "INSERT INTO headers(hash, chainwork, height, header, wasundoable) VALUES(?, ?, ?, ?, ?)"

.field private static final INSERT_OPENOUTPUTS_SQL:Ljava/lang/String; = "INSERT INTO openoutputs (hash, index, height, value, scriptbytes, toaddress, addresstargetable, coinbase) VALUES (?, ?, ?, ?, ?, ?, ?, ?)"

.field private static final INSERT_SETTINGS_SQL:Ljava/lang/String; = "INSERT INTO settings(name, value) VALUES(?, ?)"

.field private static final INSERT_UNDOABLEBLOCKS_SQL:Ljava/lang/String; = "INSERT INTO undoableblocks(hash, height, txoutchanges, transactions) VALUES(?, ?, ?, ?)"

.field private static final SELECT_BALANCE_SQL:Ljava/lang/String; = "select sum(value) from openoutputs where toaddress = ?"

.field private static final SELECT_CHECK_TABLES_EXIST_SQL:Ljava/lang/String; = "SELECT * FROM settings WHERE 1 = 2"

.field private static final SELECT_COMPATIBILITY_COINBASE_SQL:Ljava/lang/String; = "SELECT coinbase FROM openoutputs WHERE 1 = 2"

.field private static final SELECT_DUMP_HEADERS_SQL:Ljava/lang/String; = "SELECT chainwork, header FROM headers"

.field private static final SELECT_DUMP_OPENOUTPUTS_SQL:Ljava/lang/String; = "SELECT value, scriptbytes FROM openoutputs"

.field private static final SELECT_DUMP_SETTINGS_SQL:Ljava/lang/String; = "SELECT name, value FROM settings"

.field private static final SELECT_DUMP_UNDOABLEBLOCKS_SQL:Ljava/lang/String; = "SELECT txoutchanges, transactions FROM undoableblocks"

.field private static final SELECT_HEADERS_SQL:Ljava/lang/String; = "SELECT chainwork, height, header, wasundoable FROM headers WHERE hash = ?"

.field private static final SELECT_OPENOUTPUTS_COUNT_SQL:Ljava/lang/String; = "SELECT COUNT(*) FROM openoutputs WHERE hash = ?"

.field private static final SELECT_OPENOUTPUTS_SQL:Ljava/lang/String; = "SELECT height, value, scriptbytes, coinbase, toaddress, addresstargetable FROM openoutputs WHERE hash = ? AND index = ?"

.field private static final SELECT_SETTINGS_SQL:Ljava/lang/String; = "SELECT value FROM settings WHERE name = ?"

.field private static final SELECT_TRANSACTION_OUTPUTS_SQL:Ljava/lang/String; = "SELECT hash, value, scriptbytes, height, index, coinbase, toaddress, addresstargetable FROM openoutputs where toaddress = ?"

.field private static final SELECT_UNDOABLEBLOCKS_SQL:Ljava/lang/String; = "SELECT txoutchanges, transactions FROM undoableblocks WHERE hash = ?"

.field private static final UPDATE_HEADERS_SQL:Ljava/lang/String; = "UPDATE headers SET wasundoable=? WHERE hash=?"

.field private static final UPDATE_SETTINGS_SQL:Ljava/lang/String; = "UPDATE settings SET value = ? WHERE name = ?"

.field private static final UPDATE_UNDOABLEBLOCKS_SQL:Ljava/lang/String; = "UPDATE undoableblocks SET txoutchanges=?, transactions=? WHERE hash = ?"

.field private static final VERIFIED_CHAIN_HEAD_SETTING:Ljava/lang/String; = "verifiedchainhead"

.field private static final VERSION_SETTING:Ljava/lang/String; = "version"

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field protected allConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/sql/Connection;",
            ">;"
        }
    .end annotation
.end field

.field protected chainHeadBlock:Lorg/bitcoinj/core/StoredBlock;

.field protected chainHeadHash:Lorg/bitcoinj/core/Sha256Hash;

.field protected conn:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/sql/Connection;",
            ">;"
        }
    .end annotation
.end field

.field protected connectionURL:Ljava/lang/String;

.field protected fullStoreDepth:I

.field protected params:Lorg/bitcoinj/core/NetworkParameters;

.field protected password:Ljava/lang/String;

.field protected schemaName:Ljava/lang/String;

.field protected username:Ljava/lang/String;

.field protected verifiedChainHeadBlock:Lorg/bitcoinj/core/StoredBlock;

.field protected verifiedChainHeadHash:Lorg/bitcoinj/core/Sha256Hash;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 90
    const-class v0, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p4    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput-object p1, p0, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->params:Lorg/bitcoinj/core/NetworkParameters;

    .line 166
    iput p3, p0, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->fullStoreDepth:I

    .line 167
    iput-object p2, p0, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->connectionURL:Ljava/lang/String;

    .line 168
    iput-object p6, p0, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->schemaName:Ljava/lang/String;

    .line 169
    iput-object p4, p0, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->username:Ljava/lang/String;

    .line 170
    iput-object p5, p0, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->password:Ljava/lang/String;

    .line 171
    new-instance p1, Ljava/lang/ThreadLocal;

    invoke-direct {p1}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object p1, p0, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    .line 172
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->allConnections:Ljava/util/List;

    .line 175
    :try_start_0
    invoke-virtual {p0}, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->getDatabaseDriverClass()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 176
    sget-object p1, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->log:Lorg/slf4j/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->getDatabaseDriverClass()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " loaded. "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 178
    sget-object p2, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->log:Lorg/slf4j/Logger;

    const-string p3, "check CLASSPATH for database driver jar "

    invoke-interface {p2, p3, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 181
    :goto_0
    invoke-virtual {p0}, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->maybeConnect()V

    .line 185
    :try_start_1
    invoke-direct {p0}, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->tablesExists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 186
    invoke-direct {p0}, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->createTables()V

    goto :goto_1

    .line 188
    :cond_0
    invoke-direct {p0}, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->checkCompatibility()V

    .line 190
    :goto_1
    invoke-direct {p0}, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->initFromDatabase()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 192
    new-instance p2, Lorg/bitcoinj/store/BlockStoreException;

    invoke-direct {p2, p1}, Lorg/bitcoinj/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private checkCompatibility()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;,
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    .line 501
    invoke-virtual {p0}, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->getCompatibilitySQL()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    .line 504
    :try_start_0
    iget-object v3, p0, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/sql/Connection;

    invoke-interface {v3, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v2

    .line 505
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v1

    .line 506
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 511
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 512
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 508
    :try_start_1
    new-instance v1, Lorg/bitcoinj/store/BlockStoreException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Database block store is not compatible with the current release.  See bitcoinj release notes for further information: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    invoke-virtual {v0}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/bitcoinj/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v2, :cond_1

    .line 511
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 512
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->close()V

    :cond_1
    throw v0

    :cond_2
    return-void
.end method

.method private createNewStore(Lorg/bitcoinj/core/NetworkParameters;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    .line 565
    :try_start_0
    new-instance v0, Lorg/bitcoinj/core/StoredBlock;

    invoke-virtual {p1}, Lorg/bitcoinj/core/NetworkParameters;->getGenesisBlock()Lorg/bitcoinj/core/Block;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bitcoinj/core/Block;->cloneAsHeader()Lorg/bitcoinj/core/Block;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bitcoinj/core/NetworkParameters;->getGenesisBlock()Lorg/bitcoinj/core/Block;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bitcoinj/core/Block;->getWork()Ljava/math/BigInteger;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/bitcoinj/core/StoredBlock;-><init>(Lorg/bitcoinj/core/Block;Ljava/math/BigInteger;I)V

    .line 568
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v1

    .line 569
    new-instance v2, Lorg/bitcoinj/core/StoredUndoableBlock;

    invoke-virtual {p1}, Lorg/bitcoinj/core/NetworkParameters;->getGenesisBlock()Lorg/bitcoinj/core/Block;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bitcoinj/core/Block;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object p1

    invoke-direct {v2, p1, v1}, Lorg/bitcoinj/core/StoredUndoableBlock;-><init>(Lorg/bitcoinj/core/Sha256Hash;Ljava/util/List;)V

    .line 570
    invoke-virtual {p0, v0, v2}, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->put(Lorg/bitcoinj/core/StoredBlock;Lorg/bitcoinj/core/StoredUndoableBlock;)V

    .line 571
    invoke-virtual {p0, v0}, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->setChainHead(Lorg/bitcoinj/core/StoredBlock;)V

    .line 572
    invoke-virtual {p0, v0}, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->setVerifiedChainHead(Lorg/bitcoinj/core/StoredBlock;)V
    :try_end_0
    .catch Lorg/bitcoinj/core/VerificationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 574
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private createTables()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;,
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    .line 524
    iget-object v0, p0, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/sql/Connection;

    invoke-interface {v0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v0

    .line 526
    invoke-virtual {p0}, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->getCreateTablesSQL()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 527
    sget-object v3, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->log:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 528
    sget-object v3, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->log:Lorg/slf4j/Logger;

    const-string v4, "DatabaseFullPrunedBlockStore : CREATE table [SQL= {0}]"

    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 530
    :cond_0
    invoke-interface {v0, v2}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I

    goto :goto_0

    .line 533
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->getCreateIndexesSQL()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 534
    sget-object v3, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->log:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 535
    sget-object v3, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->log:Lorg/slf4j/Logger;

    const-string v4, "DatabaseFullPrunedBlockStore : CREATE index [SQL= {0}]"

    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 537
    :cond_2
    invoke-interface {v0, v2}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I

    goto :goto_1

    .line 539
    :cond_3
    invoke-interface {v0}, Ljava/sql/Statement;->close()V

    .line 542
    iget-object v0, p0, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/sql/Connection;

    invoke-virtual {p0}, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->getInsertSettingsSQL()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "chainhead"

    .line 543
    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 v2, -0x2

    const/4 v3, 0x2

    .line 544
    invoke-interface {v0, v3, v2}, Ljava/sql/PreparedStatement;->setNull(II)V

    .line 545
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->execute()Z

    const-string v4, "verifiedchainhead"

    .line 546
    invoke-interface {v0, v1, v4}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 547
    invoke-interface {v0, v3, v2}, Ljava/sql/PreparedStatement;->setNull(II)V

    .line 548
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->execute()Z

    const-string v2, "version"

    .line 549
    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const-string v1, "03"

    .line 550
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 551
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->execute()Z

    .line 552
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    .line 553
    iget-object v0, p0, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-direct {p0, v0}, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->createNewStore(Lorg/bitcoinj/core/NetworkParameters;)V

    return-void
.end method

.method private initFromDatabase()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;,
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    .line 584
    iget-object v0, p0, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/sql/Connection;

    invoke-virtual {p0}, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->getSelectSettingsSQL()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "chainhead"

    .line 586
    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 587
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v2

    .line 588
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 591
    invoke-interface {v2, v1}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v3

    invoke-static {v3}, Lorg/bitcoinj/core/Sha256Hash;->wrap([B)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v3

    .line 592
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V

    .line 593
    invoke-virtual {p0, v3}, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->get(Lorg/bitcoinj/core/Sha256Hash;)Lorg/bitcoinj/core/StoredBlock;

    move-result-object v2

    iput-object v2, p0, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->chainHeadBlock:Lorg/bitcoinj/core/StoredBlock;

    .line 594
    iput-object v3, p0, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->chainHeadHash:Lorg/bitcoinj/core/Sha256Hash;

    if-eqz v2, :cond_2

    const-string v2, "verifiedchainhead"

    .line 598
    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 599
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v2

    .line 600
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 603
    invoke-interface {v2, v1}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v1

    invoke-static {v1}, Lorg/bitcoinj/core/Sha256Hash;->wrap([B)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v1

    .line 604
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V

    .line 605
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    .line 606
    invoke-virtual {p0, v1}, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->get(Lorg/bitcoinj/core/Sha256Hash;)Lorg/bitcoinj/core/StoredBlock;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->verifiedChainHeadBlock:Lorg/bitcoinj/core/StoredBlock;

    .line 607
    iput-object v1, p0, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->verifiedChainHeadHash:Lorg/bitcoinj/core/Sha256Hash;

    if-eqz v0, :cond_0

    return-void

    .line 609
    :cond_0
    new-instance v0, Lorg/bitcoinj/store/BlockStoreException;

    const-string v1, "corrupt databse block store - verified head block not found"

    invoke-direct {v0, v1}, Lorg/bitcoinj/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 601
    :cond_1
    new-instance v0, Lorg/bitcoinj/store/BlockStoreException;

    const-string v1, "corrupt database block store - no verified chain head pointer"

    invoke-direct {v0, v1}, Lorg/bitcoinj/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 596
    :cond_2
    new-instance v0, Lorg/bitcoinj/store/BlockStoreException;

    const-string v1, "corrupt database block store - head block not found"

    invoke-direct {v0, v1}, Lorg/bitcoinj/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 589
    :cond_3
    new-instance v0, Lorg/bitcoinj/store/BlockStoreException;

    const-string v1, "corrupt database block store - no chain head pointer"

    invoke-direct {v0, v1}, Lorg/bitcoinj/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private removeUndoableBlocksWhereHeightIsLessThan(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    .line 902
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/sql/Connection;

    .line 903
    invoke-virtual {p0}, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->getDeleteUndoableBlocksSQL()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 904
    invoke-interface {v0, v1, p1}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 905
    sget-object v1, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 906
    sget-object v1, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deleting undoable undoable block with height <= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 907
    :cond_0
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 908
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 910
    new-instance v0, Lorg/bitcoinj/store/BlockStoreException;

    invoke-direct {v0, p1}, Lorg/bitcoinj/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private tablesExists()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 483
    :try_start_0
    iget-object v1, p0, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/sql/Connection;

    invoke-virtual {p0}, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->getTablesExistSQL()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    .line 484
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v1

    .line 485
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 490
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 491
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_0
    return v1

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 490
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 491
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_1
    throw v1

    :catch_0
    nop

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 490
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 491
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_2
    return v1
.end method


# virtual methods
.method public abortDatabaseBatchWrite()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    .line 1032
    invoke-virtual {p0}, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->maybeConnect()V

    .line 1033
    sget-object v0, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1034
    sget-object v0, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->log:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rollback database batch write with connection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/sql/Connection;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 1036
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/sql/Connection;

    invoke-interface {v0}, Ljava/sql/Connection;->getAutoCommit()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1037
    iget-object v0, p0, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/sql/Connection;

    invoke-interface {v0}, Ljava/sql/Connection;->rollback()V

    .line 1038
    iget-object v0, p0, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/sql/Connection;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/sql/Connection;->setAutoCommit(Z)V

    goto :goto_0

    .line 1040
    :cond_1
    sget-object v0, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->log:Lorg/slf4j/Logger;

    const-string v1, "Warning: Rollback attempt without transaction"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 1043
    new-instance v1, Lorg/bitcoinj/store/BlockStoreException;

    invoke-direct {v1, v0}, Lorg/bitcoinj/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public addUnspentTransactionOutput(Lorg/bitcoinj/core/UTXO;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    .line 957
    invoke-virtual {p0}, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->maybeConnect()V

    const/4 v0, 0x0

    .line 960
    :try_start_0
    iget-object v1, p0, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/sql/Connection;

    invoke-virtual {p0}, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->getInsertOpenoutputsSQL()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 961
    invoke-virtual {p1}, Lorg/bitcoinj/core/UTXO;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bitcoinj/core/Sha256Hash;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x2

    .line 963
    invoke-virtual {p1}, Lorg/bitcoinj/core/UTXO;->getIndex()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-interface {v0, v1, v3}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/4 v1, 0x3

    .line 964
    invoke-virtual {p1}, Lorg/bitcoinj/core/UTXO;->getHeight()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/4 v1, 0x4

    .line 965
    invoke-virtual {p1}, Lorg/bitcoinj/core/UTXO;->getValue()Lorg/bitcoinj/core/Coin;

    move-result-object v2

    iget-wide v2, v2, Lorg/bitcoinj/core/Coin;->value:J

    invoke-interface {v0, v1, v2, v3}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    const/4 v1, 0x5

    .line 966
    invoke-virtual {p1}, Lorg/bitcoinj/core/UTXO;->getScript()Lorg/bitcoinj/script/Script;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bitcoinj/script/Script;->getProgram()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x6

    .line 967
    invoke-virtual {p1}, Lorg/bitcoinj/core/UTXO;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 v1, 0x7

    .line 968
    invoke-virtual {p1}, Lorg/bitcoinj/core/UTXO;->getScript()Lorg/bitcoinj/script/Script;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bitcoinj/script/Script;->getScriptType()Lorg/bitcoinj/script/Script$ScriptType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bitcoinj/script/Script$ScriptType;->ordinal()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/16 v1, 0x8

    .line 969
    invoke-virtual {p1}, Lorg/bitcoinj/core/UTXO;->isCoinbase()Z

    move-result p1

    invoke-interface {v0, v1, p1}, Ljava/sql/PreparedStatement;->setBoolean(IZ)V

    .line 970
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 971
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 978
    :try_start_1
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 980
    new-instance v0, Lorg/bitcoinj/store/BlockStoreException;

    invoke-direct {v0, p1}, Lorg/bitcoinj/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 973
    :try_start_2
    invoke-virtual {p1}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->getDuplicateKeyErrorCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 978
    :try_start_3
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception p1

    .line 980
    new-instance v0, Lorg/bitcoinj/store/BlockStoreException;

    invoke-direct {v0, p1}, Lorg/bitcoinj/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    return-void

    .line 974
    :cond_1
    :try_start_4
    new-instance v1, Lorg/bitcoinj/store/BlockStoreException;

    invoke-direct {v1, p1}, Lorg/bitcoinj/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    if-eqz v0, :cond_2

    .line 978
    :try_start_5
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    :catch_3
    move-exception p1

    .line 980
    new-instance v0, Lorg/bitcoinj/store/BlockStoreException;

    invoke-direct {v0, p1}, Lorg/bitcoinj/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    :goto_2
    throw p1
.end method

.method public beginDatabaseBatchWrite()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    .line 1007
    invoke-virtual {p0}, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->maybeConnect()V

    .line 1008
    sget-object v0, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1009
    sget-object v0, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->log:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting database batch write with connection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/sql/Connection;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 1011
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/sql/Connection;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/sql/Connection;->setAutoCommit(Z)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1013
    new-instance v1, Lorg/bitcoinj/store/BlockStoreException;

    invoke-direct {v1, v0}, Lorg/bitcoinj/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public calculateBalanceForAddress(Lorg/bitcoinj/core/Address;)Ljava/math/BigInteger;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    const-string v0, "Could not close statement"

    .line 1134
    invoke-virtual {p0}, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->maybeConnect()V

    const/4 v1, 0x0

    .line 1137
    :try_start_0
    iget-object v2, p0, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/sql/Connection;

    invoke-virtual {p0}, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->getBalanceSelectSQL()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1

    .line 1138
    invoke-virtual {p1}, Lorg/bitcoinj/core/Address;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    invoke-interface {v1, v2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 1139
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1

    .line 1140
    sget-object v3, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 1141
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1142
    invoke-interface {p1, v2}, Ljava/sql/ResultSet;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1150
    :try_start_1
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1152
    :catch_0
    new-instance p1, Lorg/bitcoinj/store/BlockStoreException;

    invoke-direct {p1, v0}, Lorg/bitcoinj/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    if-eqz v1, :cond_2

    .line 1150
    :try_start_2
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1152
    :catch_1
    new-instance p1, Lorg/bitcoinj/store/BlockStoreException;

    invoke-direct {p1, v0}, Lorg/bitcoinj/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    return-object v3

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    .line 1146
    :try_start_3
    new-instance v2, Lorg/bitcoinj/store/BlockStoreException;

    invoke-direct {v2, p1}, Lorg/bitcoinj/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    if-eqz v1, :cond_3

    .line 1150
    :try_start_4
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    .line 1152
    :catch_3
    new-instance p1, Lorg/bitcoinj/store/BlockStoreException;

    invoke-direct {p1, v0}, Lorg/bitcoinj/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_3
    throw p1
.end method

.method public declared-synchronized close()V
    .locals 3

    monitor-enter p0

    .line 454
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->allConnections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/sql/Connection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 456
    :try_start_1
    invoke-interface {v1}, Ljava/sql/Connection;->getAutoCommit()Z

    move-result v2

    if-nez v2, :cond_1

    .line 457
    invoke-interface {v1}, Ljava/sql/Connection;->rollback()V

    .line 459
    :cond_1
    invoke-interface {v1}, Ljava/sql/Connection;->close()V

    .line 460
    iget-object v2, p0, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 461
    iget-object v1, p0, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 464
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 467
    :cond_2
    iget-object v0, p0, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->allConnections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 468
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public commitDatabaseBatchWrite()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    .line 1019
    invoke-virtual {p0}, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->maybeConnect()V

    .line 1020
    sget-object v0, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1021
    sget-object v0, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->log:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Committing database batch write with connection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/sql/Connection;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 1023
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/sql/Connection;

    invoke-interface {v0}, Ljava/sql/Connection;->commit()V

    .line 1024
    iget-object v0, p0, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/sql/Connection;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/sql/Connection;->setAutoCommit(Z)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1026
    new-instance v1, Lorg/bitcoinj/store/BlockStoreException;

    invoke-direct {v1, v0}, Lorg/bitcoinj/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public deleteStore()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    .line 1107
    invoke-virtual {p0}, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->maybeConnect()V

    .line 1109
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/sql/Connection;

    invoke-interface {v0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v0

    .line 1110
    invoke-virtual {p0}, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->getDropTablesSQL()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1111
    invoke-interface {v0, v2}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    goto :goto_0

    .line 1113
    :cond_0
    invoke-interface {v0}, Ljava/sql/Statement;->close()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1115
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public dumpSizes()V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;,
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    .line 1207
    invoke-virtual/range {p0 .. p0}, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->maybeConnect()V

    move-object/from16 v0, p0

    .line 1208
    iget-object v1, v0, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/sql/Connection;

    invoke-interface {v1}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v1

    .line 1212
    invoke-virtual/range {p0 .. p0}, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->getSelectSettingsDumpSQL()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v2

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-wide v6, v3

    const/4 v8, 0x0

    .line 1213
    :goto_0
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v9

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eqz v9, :cond_0

    .line 1214
    invoke-interface {v2, v11}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    int-to-long v11, v9

    add-long/2addr v6, v11

    .line 1215
    invoke-interface {v2, v10}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v9

    array-length v9, v9

    int-to-long v9, v9

    add-long/2addr v6, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1218
    :cond_0
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V

    .line 1219
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v12, 0x3

    new-array v13, v12, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v13, v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v11

    long-to-double v14, v6

    int-to-double v11, v8

    div-double/2addr v14, v11

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v13, v10

    const-string v8, "Settings size: %d, count: %d, average size: %f%n"

    invoke-virtual {v2, v9, v8, v13}, Ljava/io/PrintStream;->printf(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    add-long/2addr v6, v3

    .line 1222
    invoke-virtual/range {p0 .. p0}, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->getSelectHeadersDumpSQL()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v2

    move-wide v8, v3

    const/4 v11, 0x0

    .line 1223
    :goto_1
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v12

    const-wide/16 v13, 0x1c

    const-wide/16 v17, 0x4

    if-eqz v12, :cond_1

    add-long/2addr v8, v13

    const/4 v12, 0x1

    .line 1225
    invoke-interface {v2, v12}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v13

    array-length v12, v13

    int-to-long v12, v12

    add-long/2addr v8, v12

    add-long v8, v8, v17

    .line 1227
    invoke-interface {v2, v10}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v12

    array-length v12, v12

    int-to-long v12, v12

    add-long/2addr v8, v12

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1230
    :cond_1
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V

    .line 1231
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v15, 0x3

    new-array v3, v15, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v15, 0x1

    aput-object v4, v3, v15

    long-to-double v13, v8

    move-wide/from16 v19, v6

    int-to-double v5, v11

    div-double/2addr v13, v5

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v10

    const-string v5, "Headers size: %d, count: %d, average size: %f%n"

    invoke-virtual {v2, v12, v5, v3}, Ljava/io/PrintStream;->printf(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    add-long v6, v19, v8

    .line 1234
    invoke-virtual/range {p0 .. p0}, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->getSelectUndoableblocksDumpSQL()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v2

    const/4 v3, 0x0

    const-wide/16 v8, 0x0

    .line 1235
    :goto_2
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v5

    if-eqz v5, :cond_3

    const-wide/16 v11, 0x1c

    add-long/2addr v8, v11

    add-long v8, v8, v17

    const/4 v5, 0x1

    .line 1238
    invoke-interface {v2, v5}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v13

    .line 1239
    invoke-interface {v2, v10}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v5

    if-nez v13, :cond_2

    .line 1241
    array-length v5, v5

    goto :goto_3

    .line 1243
    :cond_2
    array-length v5, v13

    :goto_3
    int-to-long v13, v5

    add-long/2addr v8, v13

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1247
    :cond_3
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V

    .line 1248
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v11, 0x3

    new-array v12, v11, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v4, 0x0

    aput-object v11, v12, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v13, 0x1

    aput-object v11, v12, v13

    long-to-double v13, v8

    move-object v11, v5

    int-to-double v4, v3

    div-double/2addr v13, v4

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v12, v10

    const-string v3, "Undoable Blocks size: %d, count: %d, average size: %f%n"

    invoke-virtual {v2, v11, v3, v12}, Ljava/io/PrintStream;->printf(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    add-long/2addr v6, v8

    .line 1252
    invoke-virtual/range {p0 .. p0}, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->getSelectopenoutputsDumpSQL()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v2

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const-wide/16 v8, 0x0

    .line 1253
    :goto_4
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v11

    if-eqz v11, :cond_4

    const-wide/16 v11, 0x20

    add-long/2addr v3, v11

    add-long v3, v3, v17

    add-long v3, v3, v17

    const/4 v11, 0x1

    .line 1257
    invoke-interface {v2, v11}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v12

    array-length v11, v12

    int-to-long v11, v11

    add-long/2addr v3, v11

    .line 1258
    invoke-interface {v2, v10}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v11

    array-length v11, v11

    int-to-long v11, v11

    add-long/2addr v3, v11

    .line 1259
    invoke-interface {v2, v10}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v11

    array-length v11, v11

    int-to-long v11, v11

    add-long/2addr v8, v11

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 1262
    :cond_4
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V

    .line 1263
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v12, 0x5

    new-array v12, v12, [Ljava/lang/Object;

    .line 1264
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x1

    aput-object v13, v12, v14

    long-to-double v13, v3

    move-object/from16 v16, v11

    int-to-double v10, v5

    div-double/2addr v13, v10

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    const/4 v14, 0x2

    aput-object v13, v12, v14

    long-to-double v8, v8

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    const/4 v9, 0x3

    aput-object v8, v12, v9

    const/4 v8, 0x4

    mul-int/lit8 v5, v5, 0x8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v12, v8

    const-string v5, "Open Outputs size: %d, count: %d, average size: %f, average script size: %f (%d in id indexes)%n"

    move-object/from16 v8, v16

    .line 1263
    invoke-virtual {v2, v8, v5, v12}, Ljava/io/PrintStream;->printf(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    add-long/2addr v6, v3

    .line 1267
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Total Size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1269
    invoke-interface {v1}, Ljava/sql/Statement;->close()V

    return-void
.end method

.method public get(Lorg/bitcoinj/core/Sha256Hash;)Lorg/bitcoinj/core/StoredBlock;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 779
    invoke-virtual {p0, p1, v0}, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->get(Lorg/bitcoinj/core/Sha256Hash;Z)Lorg/bitcoinj/core/StoredBlock;

    move-result-object p1

    return-object p1
.end method

.method public get(Lorg/bitcoinj/core/Sha256Hash;Z)Lorg/bitcoinj/core/StoredBlock;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    const-string v0, "Failed to close PreparedStatement"

    .line 729
    iget-object v1, p0, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->chainHeadHash:Lorg/bitcoinj/core/Sha256Hash;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lorg/bitcoinj/core/Sha256Hash;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 730
    iget-object p1, p0, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->chainHeadBlock:Lorg/bitcoinj/core/StoredBlock;

    return-object p1

    .line 731
    :cond_0
    iget-object v1, p0, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->verifiedChainHeadHash:Lorg/bitcoinj/core/Sha256Hash;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lorg/bitcoinj/core/Sha256Hash;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 732
    iget-object p1, p0, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->verifiedChainHeadBlock:Lorg/bitcoinj/core/StoredBlock;

    return-object p1

    .line 733
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->maybeConnect()V

    const/4 v1, 0x0

    .line 736
    :try_start_0
    iget-object v2, p0, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/sql/Connection;

    .line 737
    invoke-virtual {p0}, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->getSelectHeadersSQL()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v2
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Lorg/bitcoinj/core/ProtocolException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lorg/bitcoinj/core/VerificationException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v3, 0x1c

    :try_start_1
    new-array v4, v3, [B

    .line 740
    invoke-virtual {p1}, Lorg/bitcoinj/core/Sha256Hash;->getBytes()[B

    move-result-object p1

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-static {p1, v6, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x1

    .line 741
    invoke-interface {v2, p1, v4}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 742
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v3

    .line 743
    invoke-interface {v3}, Ljava/sql/ResultSet;->next()Z

    move-result v4
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lorg/bitcoinj/core/ProtocolException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/bitcoinj/core/VerificationException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_3

    if-eqz v2, :cond_2

    .line 769
    :try_start_2
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 771
    :catch_0
    new-instance p1, Lorg/bitcoinj/store/BlockStoreException;

    invoke-direct {p1, v0}, Lorg/bitcoinj/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-object v1

    :cond_3
    if-eqz p2, :cond_5

    .line 748
    :try_start_3
    invoke-interface {v3, v6}, Ljava/sql/ResultSet;->getBoolean(I)Z

    move-result p2
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Lorg/bitcoinj/core/ProtocolException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lorg/bitcoinj/core/VerificationException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez p2, :cond_5

    if-eqz v2, :cond_4

    .line 769
    :try_start_4
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 771
    :catch_1
    new-instance p1, Lorg/bitcoinj/store/BlockStoreException;

    invoke-direct {p1, v0}, Lorg/bitcoinj/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    return-object v1

    .line 751
    :cond_5
    :try_start_5
    new-instance p2, Ljava/math/BigInteger;

    invoke-interface {v3, p1}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/math/BigInteger;-><init>([B)V

    const/4 p1, 0x2

    .line 752
    invoke-interface {v3, p1}, Ljava/sql/ResultSet;->getInt(I)I

    move-result p1

    .line 753
    iget-object v1, p0, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {v1}, Lorg/bitcoinj/core/NetworkParameters;->getDefaultSerializer()Lorg/bitcoinj/core/MessageSerializer;

    move-result-object v1

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/bitcoinj/core/MessageSerializer;->makeBlock([B)Lorg/bitcoinj/core/Block;

    move-result-object v1

    .line 754
    invoke-virtual {v1}, Lorg/bitcoinj/core/Block;->verifyHeader()V

    .line 755
    new-instance v3, Lorg/bitcoinj/core/StoredBlock;

    invoke-direct {v3, v1, p2, p1}, Lorg/bitcoinj/core/StoredBlock;-><init>(Lorg/bitcoinj/core/Block;Ljava/math/BigInteger;I)V
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Lorg/bitcoinj/core/ProtocolException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lorg/bitcoinj/core/VerificationException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v2, :cond_6

    .line 769
    :try_start_6
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->close()V
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    .line 771
    :catch_2
    new-instance p1, Lorg/bitcoinj/store/BlockStoreException;

    invoke-direct {p1, v0}, Lorg/bitcoinj/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_2
    return-object v3

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_6

    :catch_3
    move-exception p1

    move-object v1, v2

    goto :goto_3

    :catch_4
    move-exception p1

    move-object v1, v2

    goto :goto_4

    :catch_5
    move-exception p1

    move-object v1, v2

    goto :goto_5

    :catchall_1
    move-exception p1

    goto :goto_6

    :catch_6
    move-exception p1

    .line 765
    :goto_3
    :try_start_7
    new-instance p2, Lorg/bitcoinj/store/BlockStoreException;

    invoke-direct {p2, p1}, Lorg/bitcoinj/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_7
    move-exception p1

    .line 761
    :goto_4
    new-instance p2, Lorg/bitcoinj/store/BlockStoreException;

    invoke-direct {p2, p1}, Lorg/bitcoinj/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_8
    move-exception p1

    .line 758
    :goto_5
    new-instance p2, Lorg/bitcoinj/store/BlockStoreException;

    invoke-direct {p2, p1}, Lorg/bitcoinj/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_6
    if-eqz v1, :cond_7

    .line 769
    :try_start_8
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_8
    .catch Ljava/sql/SQLException; {:try_start_8 .. :try_end_8} :catch_9

    goto :goto_7

    .line 771
    :catch_9
    new-instance p1, Lorg/bitcoinj/store/BlockStoreException;

    invoke-direct {p1, v0}, Lorg/bitcoinj/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_7
    throw p1
.end method

.method protected getBalanceSelectSQL()Ljava/lang/String;
    .locals 1

    const-string v0, "select sum(value) from openoutputs where toaddress = ?"

    return-object v0
.end method

.method public getChainHead()Lorg/bitcoinj/core/StoredBlock;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    .line 853
    iget-object v0, p0, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->chainHeadBlock:Lorg/bitcoinj/core/StoredBlock;

    return-object v0
.end method

.method public getChainHeadHeight()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/UTXOProviderException;
        }
    .end annotation

    .line 1081
    :try_start_0
    invoke-virtual {p0}, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->getVerifiedChainHead()Lorg/bitcoinj/core/StoredBlock;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/core/StoredBlock;->getHeight()I

    move-result v0
    :try_end_0
    .catch Lorg/bitcoinj/store/BlockStoreException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 1083
    new-instance v1, Lorg/bitcoinj/core/UTXOProviderException;

    invoke-direct {v1, v0}, Lorg/bitcoinj/core/UTXOProviderException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected getCompatibilitySQL()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 249
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "SELECT coinbase FROM openoutputs WHERE 1 = 2"

    .line 250
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected abstract getCreateIndexesSQL()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract getCreateSchemeSQL()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract getCreateTablesSQL()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract getDatabaseDriverClass()Ljava/lang/String;
.end method

.method protected getDeleteOpenoutputsSQL()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM openoutputs WHERE hash = ? AND index = ?"

    return-object v0
.end method

.method protected getDeleteUndoableBlocksSQL()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM undoableblocks WHERE height <= ?"

    return-object v0
.end method

.method protected getDropTablesSQL()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 267
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "DROP TABLE settings"

    .line 268
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "DROP TABLE headers"

    .line 269
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "DROP TABLE undoableblocks"

    .line 270
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "DROP TABLE openoutputs"

    .line 271
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected abstract getDuplicateKeyErrorCode()Ljava/lang/String;
.end method

.method protected getInsertHeadersSQL()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT INTO headers(hash, chainwork, height, header, wasundoable) VALUES(?, ?, ?, ?, ?)"

    return-object v0
.end method

.method protected getInsertOpenoutputsSQL()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT INTO openoutputs (hash, index, height, value, scriptbytes, toaddress, addresstargetable, coinbase) VALUES (?, ?, ?, ?, ?, ?, ?, ?)"

    return-object v0
.end method

.method protected getInsertSettingsSQL()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT INTO settings(name, value) VALUES(?, ?)"

    return-object v0
.end method

.method protected getInsertUndoableBlocksSQL()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT INTO undoableblocks(hash, height, txoutchanges, transactions) VALUES(?, ?, ?, ?)"

    return-object v0
.end method

.method public getOnceUndoableStoredBlock(Lorg/bitcoinj/core/Sha256Hash;)Lorg/bitcoinj/core/StoredBlock;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 784
    invoke-virtual {p0, p1, v0}, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->get(Lorg/bitcoinj/core/Sha256Hash;Z)Lorg/bitcoinj/core/StoredBlock;

    move-result-object p1

    return-object p1
.end method

.method public getOpenTransactionOutputs(Ljava/util/List;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/Address;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/UTXO;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/UTXOProviderException;
        }
    .end annotation

    const-string v1, "Could not close statement"

    .line 1161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 1163
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->maybeConnect()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/bitcoinj/store/BlockStoreException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v3, p0

    .line 1164
    :try_start_1
    iget-object v4, v3, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/sql/Connection;

    invoke-virtual/range {p0 .. p0}, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->getTrasactionOutputSelectSQL()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v2

    .line 1165
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/bitcoinj/core/Address;

    .line 1166
    invoke-virtual {v5}, Lorg/bitcoinj/core/Address;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v2, v6, v5}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 1167
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v5

    .line 1168
    :goto_0
    invoke-interface {v5}, Ljava/sql/ResultSet;->next()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1169
    invoke-interface {v5, v6}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v7

    invoke-static {v7}, Lorg/bitcoinj/core/Sha256Hash;->wrap([B)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v9

    const/4 v7, 0x2

    .line 1170
    invoke-interface {v5, v7}, Ljava/sql/ResultSet;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Lorg/bitcoinj/core/Coin;->valueOf(J)Lorg/bitcoinj/core/Coin;

    move-result-object v12

    const/4 v7, 0x3

    .line 1171
    invoke-interface {v5, v7}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v7

    const/4 v8, 0x4

    .line 1172
    invoke-interface {v5, v8}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v13

    const/4 v8, 0x5

    .line 1173
    invoke-interface {v5, v8}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v8

    const/4 v10, 0x6

    .line 1174
    invoke-interface {v5, v10}, Ljava/sql/ResultSet;->getBoolean(I)Z

    move-result v14

    const/4 v10, 0x7

    .line 1175
    invoke-interface {v5, v10}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1176
    new-instance v15, Lorg/bitcoinj/core/UTXO;

    int-to-long v10, v8

    new-instance v8, Lorg/bitcoinj/script/Script;

    invoke-direct {v8, v7}, Lorg/bitcoinj/script/Script;-><init>([B)V

    move-object v7, v8

    move-object v8, v15

    move-object v6, v15

    move-object v15, v7

    invoke-direct/range {v8 .. v16}, Lorg/bitcoinj/core/UTXO;-><init>(Lorg/bitcoinj/core/Sha256Hash;JLorg/bitcoinj/core/Coin;IZLorg/bitcoinj/script/Script;Ljava/lang/String;)V

    .line 1183
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/bitcoinj/store/BlockStoreException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 1194
    :try_start_2
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 1196
    new-instance v0, Lorg/bitcoinj/core/UTXOProviderException;

    invoke-direct {v0, v1, v2}, Lorg/bitcoinj/core/UTXOProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    :goto_1
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object/from16 v3, p0

    goto :goto_4

    :catch_3
    move-exception v0

    move-object/from16 v3, p0

    .line 1190
    :goto_2
    :try_start_3
    new-instance v4, Lorg/bitcoinj/core/UTXOProviderException;

    invoke-direct {v4, v0}, Lorg/bitcoinj/core/UTXOProviderException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    :catch_4
    move-exception v0

    move-object/from16 v3, p0

    .line 1188
    :goto_3
    new-instance v4, Lorg/bitcoinj/core/UTXOProviderException;

    invoke-direct {v4, v0}, Lorg/bitcoinj/core/UTXOProviderException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_4
    if-eqz v2, :cond_3

    .line 1194
    :try_start_4
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_5

    :catch_5
    move-exception v0

    move-object v2, v0

    .line 1196
    new-instance v0, Lorg/bitcoinj/core/UTXOProviderException;

    invoke-direct {v0, v1, v2}, Lorg/bitcoinj/core/UTXOProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_3
    :goto_5
    throw v0
.end method

.method public getParams()Lorg/bitcoinj/core/NetworkParameters;
    .locals 1

    .line 1075
    iget-object v0, p0, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->params:Lorg/bitcoinj/core/NetworkParameters;

    return-object v0
.end method

.method protected getSelectHeadersDumpSQL()Ljava/lang/String;
    .locals 1

    const-string v0, "SELECT chainwork, header FROM headers"

    return-object v0
.end method

.method protected getSelectHeadersSQL()Ljava/lang/String;
    .locals 1

    const-string v0, "SELECT chainwork, height, header, wasundoable FROM headers WHERE hash = ?"

    return-object v0
.end method

.method protected getSelectOpenoutputsCountSQL()Ljava/lang/String;
    .locals 1

    const-string v0, "SELECT COUNT(*) FROM openoutputs WHERE hash = ?"

    return-object v0
.end method

.method protected getSelectOpenoutputsSQL()Ljava/lang/String;
    .locals 1

    const-string v0, "SELECT height, value, scriptbytes, coinbase, toaddress, addresstargetable FROM openoutputs WHERE hash = ? AND index = ?"

    return-object v0
.end method

.method protected getSelectSettingsDumpSQL()Ljava/lang/String;
    .locals 1

    const-string v0, "SELECT name, value FROM settings"

    return-object v0
.end method

.method protected getSelectSettingsSQL()Ljava/lang/String;
    .locals 1

    const-string v0, "SELECT value FROM settings WHERE name = ?"

    return-object v0
.end method

.method protected getSelectUndoableBlocksSQL()Ljava/lang/String;
    .locals 1

    const-string v0, "SELECT txoutchanges, transactions FROM undoableblocks WHERE hash = ?"

    return-object v0
.end method

.method protected getSelectUndoableblocksDumpSQL()Ljava/lang/String;
    .locals 1

    const-string v0, "SELECT txoutchanges, transactions FROM undoableblocks"

    return-object v0
.end method

.method protected getSelectopenoutputsDumpSQL()Ljava/lang/String;
    .locals 1

    const-string v0, "SELECT value, scriptbytes FROM openoutputs"

    return-object v0
.end method

.method protected getTablesExistSQL()Ljava/lang/String;
    .locals 1

    const-string v0, "SELECT * FROM settings WHERE 1 = 2"

    return-object v0
.end method

.method public getTransactionOutput(Lorg/bitcoinj/core/Sha256Hash;J)Lorg/bitcoinj/core/UTXO;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    const-string v1, "Failed to close PreparedStatement"

    .line 916
    invoke-virtual {p0}, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->maybeConnect()V

    const/4 v2, 0x0

    move-object v3, p0

    .line 919
    :try_start_0
    iget-object v0, v3, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/sql/Connection;

    .line 920
    invoke-virtual {p0}, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->getSelectOpenoutputsSQL()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v4
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 921
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lorg/bitcoinj/core/Sha256Hash;->getBytes()[B

    move-result-object v0

    const/4 v5, 0x1

    invoke-interface {v4, v5, v0}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    move-wide/from16 v8, p2

    long-to-int v0, v8

    const/4 v6, 0x2

    .line 923
    invoke-interface {v4, v6, v0}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 924
    invoke-interface {v4}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v0

    .line 925
    invoke-interface {v0}, Ljava/sql/ResultSet;->next()Z

    move-result v7
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v7, :cond_1

    if-eqz v4, :cond_0

    .line 947
    :try_start_2
    invoke-interface {v4}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 949
    :catch_0
    new-instance v0, Lorg/bitcoinj/store/BlockStoreException;

    invoke-direct {v0, v1}, Lorg/bitcoinj/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :goto_0
    return-object v2

    .line 929
    :cond_1
    :try_start_3
    invoke-interface {v0, v5}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v11

    .line 930
    invoke-interface {v0, v6}, Ljava/sql/ResultSet;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Lorg/bitcoinj/core/Coin;->valueOf(J)Lorg/bitcoinj/core/Coin;

    move-result-object v10

    const/4 v2, 0x3

    .line 931
    invoke-interface {v0, v2}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v2

    const/4 v5, 0x4

    .line 932
    invoke-interface {v0, v5}, Ljava/sql/ResultSet;->getBoolean(I)Z

    move-result v12

    const/4 v5, 0x5

    .line 933
    invoke-interface {v0, v5}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 934
    new-instance v0, Lorg/bitcoinj/core/UTXO;

    new-instance v13, Lorg/bitcoinj/script/Script;

    invoke-direct {v13, v2}, Lorg/bitcoinj/script/Script;-><init>([B)V

    move-object v6, v0

    move-object/from16 v7, p1

    move-wide/from16 v8, p2

    invoke-direct/range {v6 .. v14}, Lorg/bitcoinj/core/UTXO;-><init>(Lorg/bitcoinj/core/Sha256Hash;JLorg/bitcoinj/core/Coin;IZLorg/bitcoinj/script/Script;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_2

    .line 947
    :try_start_4
    invoke-interface {v4}, Ljava/sql/PreparedStatement;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 949
    :catch_1
    new-instance v0, Lorg/bitcoinj/store/BlockStoreException;

    invoke-direct {v0, v1}, Lorg/bitcoinj/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    return-object v0

    :catchall_0
    move-exception v0

    move-object v2, v4

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v2, v4

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    .line 943
    :goto_2
    :try_start_5
    new-instance v4, Lorg/bitcoinj/store/BlockStoreException;

    invoke-direct {v4, v0}, Lorg/bitcoinj/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_3
    if-eqz v2, :cond_3

    .line 947
    :try_start_6
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->close()V
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_4

    .line 949
    :catch_4
    new-instance v0, Lorg/bitcoinj/store/BlockStoreException;

    invoke-direct {v0, v1}, Lorg/bitcoinj/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_4
    throw v0
.end method

.method protected getTrasactionOutputSelectSQL()Ljava/lang/String;
    .locals 1

    const-string v0, "SELECT hash, value, scriptbytes, height, index, coinbase, toaddress, addresstargetable FROM openoutputs where toaddress = ?"

    return-object v0
.end method

.method public getUndoBlock(Lorg/bitcoinj/core/Sha256Hash;)Lorg/bitcoinj/core/StoredUndoableBlock;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    const-string v0, "Failed to close PreparedStatement"

    .line 789
    invoke-virtual {p0}, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->maybeConnect()V

    const/4 v1, 0x0

    .line 792
    :try_start_0
    iget-object v2, p0, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/sql/Connection;

    .line 793
    invoke-virtual {p0}, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->getSelectUndoableBlocksSQL()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v2
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Lorg/bitcoinj/core/ProtocolException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v3, 0x1c

    :try_start_1
    new-array v4, v3, [B

    .line 797
    invoke-virtual {p1}, Lorg/bitcoinj/core/Sha256Hash;->getBytes()[B

    move-result-object v5

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static {v5, v6, v4, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x1

    .line 798
    invoke-interface {v2, v3, v4}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 799
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v4

    .line 800
    invoke-interface {v4}, Ljava/sql/ResultSet;->next()Z

    move-result v5
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/bitcoinj/core/ProtocolException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_1

    if-eqz v2, :cond_0

    .line 843
    :try_start_2
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 845
    :catch_0
    new-instance p1, Lorg/bitcoinj/store/BlockStoreException;

    invoke-direct {p1, v0}, Lorg/bitcoinj/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    :goto_0
    return-object v1

    .line 804
    :cond_1
    :try_start_3
    invoke-interface {v4, v3}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v1

    const/4 v5, 0x2

    .line 805
    invoke-interface {v4, v5}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v4

    if-nez v1, :cond_3

    .line 809
    aget-byte v1, v4, v7

    and-int/lit16 v1, v1, 0xff

    aget-byte v3, v4, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    const/4 v3, 0x3

    aget-byte v5, v4, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v1, v5

    aget-byte v3, v4, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v1, v3

    .line 813
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    :goto_1
    if-ge v7, v1, :cond_2

    .line 815
    iget-object v5, p0, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {v5}, Lorg/bitcoinj/core/NetworkParameters;->getDefaultSerializer()Lorg/bitcoinj/core/MessageSerializer;

    move-result-object v5

    invoke-virtual {v5, v4, v6}, Lorg/bitcoinj/core/MessageSerializer;->makeTransaction([BI)Lorg/bitcoinj/core/Transaction;

    move-result-object v5

    .line 816
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 817
    invoke-virtual {v5}, Lorg/bitcoinj/core/Transaction;->getMessageSize()I

    move-result v5

    add-int/2addr v6, v5

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 819
    :cond_2
    new-instance v1, Lorg/bitcoinj/core/StoredUndoableBlock;

    invoke-direct {v1, p1, v3}, Lorg/bitcoinj/core/StoredUndoableBlock;-><init>(Lorg/bitcoinj/core/Sha256Hash;Ljava/util/List;)V

    goto :goto_2

    .line 821
    :cond_3
    new-instance v3, Lorg/bitcoinj/core/TransactionOutputChanges;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v3, v4}, Lorg/bitcoinj/core/TransactionOutputChanges;-><init>(Ljava/io/InputStream;)V

    .line 823
    new-instance v1, Lorg/bitcoinj/core/StoredUndoableBlock;

    invoke-direct {v1, p1, v3}, Lorg/bitcoinj/core/StoredUndoableBlock;-><init>(Lorg/bitcoinj/core/Sha256Hash;Lorg/bitcoinj/core/TransactionOutputChanges;)V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lorg/bitcoinj/core/ProtocolException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    if-eqz v2, :cond_4

    .line 843
    :try_start_4
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    .line 845
    :catch_1
    new-instance p1, Lorg/bitcoinj/store/BlockStoreException;

    invoke-direct {p1, v0}, Lorg/bitcoinj/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_3
    return-object v1

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_9

    :catch_2
    move-exception p1

    move-object v1, v2

    goto :goto_4

    :catch_3
    move-exception p1

    move-object v1, v2

    goto :goto_5

    :catch_4
    move-exception p1

    move-object v1, v2

    goto :goto_6

    :catch_5
    move-exception p1

    move-object v1, v2

    goto :goto_7

    :catch_6
    move-exception p1

    move-object v1, v2

    goto :goto_8

    :catchall_1
    move-exception p1

    goto :goto_9

    :catch_7
    move-exception p1

    .line 839
    :goto_4
    :try_start_5
    new-instance v2, Lorg/bitcoinj/store/BlockStoreException;

    invoke-direct {v2, p1}, Lorg/bitcoinj/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_8
    move-exception p1

    .line 836
    :goto_5
    new-instance v2, Lorg/bitcoinj/store/BlockStoreException;

    invoke-direct {v2, p1}, Lorg/bitcoinj/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_9
    move-exception p1

    .line 833
    :goto_6
    new-instance v2, Lorg/bitcoinj/store/BlockStoreException;

    invoke-direct {v2, p1}, Lorg/bitcoinj/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_a
    move-exception p1

    .line 830
    :goto_7
    new-instance v2, Lorg/bitcoinj/store/BlockStoreException;

    invoke-direct {v2, p1}, Lorg/bitcoinj/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_b
    move-exception p1

    .line 827
    :goto_8
    new-instance v2, Lorg/bitcoinj/store/BlockStoreException;

    invoke-direct {v2, p1}, Lorg/bitcoinj/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_9
    if-eqz v1, :cond_5

    .line 843
    :try_start_6
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_c

    goto :goto_a

    .line 845
    :catch_c
    new-instance p1, Lorg/bitcoinj/store/BlockStoreException;

    invoke-direct {p1, v0}, Lorg/bitcoinj/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_a
    throw p1
.end method

.method protected getUpdateHeadersSQL()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE headers SET wasundoable=? WHERE hash=?"

    return-object v0
.end method

.method protected getUpdateSettingsSLQ()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE settings SET value = ? WHERE name = ?"

    return-object v0
.end method

.method protected getUpdateUndoableBlocksSQL()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE undoableblocks SET txoutchanges=?, transactions=? WHERE hash = ?"

    return-object v0
.end method

.method public getVerifiedChainHead()Lorg/bitcoinj/core/StoredBlock;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    .line 876
    iget-object v0, p0, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->verifiedChainHeadBlock:Lorg/bitcoinj/core/StoredBlock;

    return-object v0
.end method

.method public hasUnspentOutputs(Lorg/bitcoinj/core/Sha256Hash;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    const-string p2, "Failed to close PreparedStatement"

    .line 1049
    invoke-virtual {p0}, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->maybeConnect()V

    const/4 v0, 0x0

    .line 1052
    :try_start_0
    iget-object v1, p0, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/sql/Connection;

    invoke-virtual {p0}, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->getSelectOpenoutputsCountSQL()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    .line 1053
    invoke-virtual {p1}, Lorg/bitcoinj/core/Sha256Hash;->getBytes()[B

    move-result-object p1

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 1054
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1

    .line 1055
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1058
    invoke-interface {p1, v1}, Ljava/sql/ResultSet;->getInt(I)I

    move-result p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1065
    :try_start_1
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1067
    :catch_0
    new-instance p1, Lorg/bitcoinj/store/BlockStoreException;

    invoke-direct {p1, p2}, Lorg/bitcoinj/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_1
    return v1

    .line 1056
    :cond_2
    :try_start_2
    new-instance p1, Lorg/bitcoinj/store/BlockStoreException;

    const-string v1, "Got no results from a COUNT(*) query"

    invoke-direct {p1, v1}, Lorg/bitcoinj/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 1061
    :try_start_3
    new-instance v1, Lorg/bitcoinj/store/BlockStoreException;

    invoke-direct {v1, p1}, Lorg/bitcoinj/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    if-eqz v0, :cond_3

    .line 1065
    :try_start_4
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 1067
    :catch_2
    new-instance p1, Lorg/bitcoinj/store/BlockStoreException;

    invoke-direct {p1, p2}, Lorg/bitcoinj/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_3
    throw p1
.end method

.method protected final declared-synchronized maybeConnect()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    monitor-enter p0

    .line 426
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/sql/Connection;

    invoke-interface {v0}, Ljava/sql/Connection;->isClosed()Z

    move-result v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 427
    monitor-exit p0

    return-void

    .line 429
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->username:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->password:Ljava/lang/String;

    if-nez v0, :cond_1

    goto :goto_0

    .line 432
    :cond_1
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    const-string v1, "user"

    .line 433
    iget-object v2, p0, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->username:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "password"

    .line 434
    iget-object v2, p0, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->password:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 435
    iget-object v1, p0, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    iget-object v2, p0, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->connectionURL:Ljava/lang/String;

    invoke-static {v2, v0}, Ljava/sql/DriverManager;->getConnection(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_1

    .line 430
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->connectionURL:Ljava/lang/String;

    invoke-static {v1}, Ljava/sql/DriverManager;->getConnection(Ljava/lang/String;)Ljava/sql/Connection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 437
    :goto_1
    iget-object v0, p0, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->allConnections:Ljava/util/List;

    iget-object v1, p0, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 438
    iget-object v0, p0, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/sql/Connection;

    .line 440
    iget-object v1, p0, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->schemaName:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 441
    invoke-interface {v0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v0

    .line 442
    invoke-virtual {p0}, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->getCreateSchemeSQL()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 443
    invoke-interface {v0, v2}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    goto :goto_2

    .line 446
    :cond_3
    sget-object v0, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->log:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Made a new connection to database "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->connectionURL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 450
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 448
    :try_start_2
    new-instance v1, Lorg/bitcoinj/store/BlockStoreException;

    invoke-direct {v1, v0}, Lorg/bitcoinj/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    monitor-exit p0

    throw v0
.end method

.method public put(Lorg/bitcoinj/core/StoredBlock;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    .line 646
    invoke-virtual {p0}, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->maybeConnect()V

    const/4 v0, 0x0

    .line 648
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->putUpdateStoredBlock(Lorg/bitcoinj/core/StoredBlock;Z)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 650
    new-instance v0, Lorg/bitcoinj/store/BlockStoreException;

    invoke-direct {v0, p1}, Lorg/bitcoinj/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public put(Lorg/bitcoinj/core/StoredBlock;Lorg/bitcoinj/core/StoredUndoableBlock;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    .line 657
    invoke-virtual {p0}, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->maybeConnect()V

    const/16 v0, 0x1c

    new-array v1, v0, [B

    .line 660
    invoke-virtual {p1}, Lorg/bitcoinj/core/StoredBlock;->getHeader()Lorg/bitcoinj/core/Block;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bitcoinj/core/Block;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bitcoinj/core/Sha256Hash;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 661
    invoke-virtual {p1}, Lorg/bitcoinj/core/StoredBlock;->getHeight()I

    move-result v0

    .line 665
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 666
    invoke-virtual {p2}, Lorg/bitcoinj/core/StoredUndoableBlock;->getTxOutChanges()Lorg/bitcoinj/core/TransactionOutputChanges;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 667
    invoke-virtual {p2}, Lorg/bitcoinj/core/StoredUndoableBlock;->getTxOutChanges()Lorg/bitcoinj/core/TransactionOutputChanges;

    move-result-object p2

    invoke-virtual {p2, v2}, Lorg/bitcoinj/core/TransactionOutputChanges;->serializeToStream(Ljava/io/OutputStream;)V

    .line 668
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    goto :goto_1

    .line 670
    :cond_0
    invoke-virtual {p2}, Lorg/bitcoinj/core/StoredUndoableBlock;->getTransactions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    and-int/lit16 v6, v4, 0xff

    .line 671
    invoke-virtual {v2, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    shr-int/lit8 v6, v4, 0x8

    and-int/lit16 v6, v6, 0xff

    .line 672
    invoke-virtual {v2, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    shr-int/lit8 v6, v4, 0x10

    and-int/lit16 v6, v6, 0xff

    .line 673
    invoke-virtual {v2, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    shr-int/lit8 v4, v4, 0x18

    and-int/lit16 v4, v4, 0xff

    .line 674
    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 675
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

    .line 676
    invoke-virtual {v4, v2}, Lorg/bitcoinj/core/Transaction;->bitcoinSerialize(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 677
    :cond_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    move-object v10, v5

    move-object v5, p2

    move-object p2, v10

    .line 679
    :goto_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v2, 0x3

    const/4 v4, 0x2

    const/4 v6, -0x2

    const/4 v7, 0x1

    .line 686
    :try_start_1
    iget-object v8, p0, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    .line 687
    invoke-virtual {v8}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/sql/Connection;

    invoke-virtual {p0}, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->getInsertUndoableBlocksSQL()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v8

    .line 688
    invoke-interface {v8, v7, v1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 689
    invoke-interface {v8, v4, v0}, Ljava/sql/PreparedStatement;->setInt(II)V

    if-nez v5, :cond_2

    .line 691
    invoke-interface {v8, v2, p2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 692
    invoke-interface {v8, v3, v6}, Ljava/sql/PreparedStatement;->setNull(II)V

    goto :goto_2

    .line 694
    :cond_2
    invoke-interface {v8, v2, v6}, Ljava/sql/PreparedStatement;->setNull(II)V

    .line 695
    invoke-interface {v8, v3, v5}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 697
    :goto_2
    invoke-interface {v8}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 698
    invoke-interface {v8}, Ljava/sql/PreparedStatement;->close()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 700
    :try_start_2
    invoke-virtual {p0, p1, v7}, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->putUpdateStoredBlock(Lorg/bitcoinj/core/StoredBlock;Z)V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 702
    :try_start_3
    new-instance v0, Lorg/bitcoinj/store/BlockStoreException;

    invoke-direct {v0, p1}, Lorg/bitcoinj/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception p1

    .line 705
    :try_start_4
    invoke-virtual {p1}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->getDuplicateKeyErrorCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 709
    iget-object p1, p0, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    .line 710
    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/sql/Connection;

    invoke-virtual {p0}, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->getUpdateUndoableBlocksSQL()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1

    .line 711
    invoke-interface {p1, v2, v1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    if-nez v5, :cond_3

    .line 713
    invoke-interface {p1, v7, p2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 714
    invoke-interface {p1, v4, v6}, Ljava/sql/PreparedStatement;->setNull(II)V

    goto :goto_3

    .line 716
    :cond_3
    invoke-interface {p1, v7, v6}, Ljava/sql/PreparedStatement;->setNull(II)V

    .line 717
    invoke-interface {p1, v4, v5}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 719
    :goto_3
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 720
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->close()V

    :goto_4
    return-void

    .line 706
    :cond_4
    new-instance p2, Lorg/bitcoinj/store/BlockStoreException;

    invoke-direct {p2, p1}, Lorg/bitcoinj/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception p1

    .line 723
    new-instance p2, Lorg/bitcoinj/store/BlockStoreException;

    invoke-direct {p2, p1}, Lorg/bitcoinj/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_3
    move-exception p1

    .line 681
    new-instance p2, Lorg/bitcoinj/store/BlockStoreException;

    invoke-direct {p2, p1}, Lorg/bitcoinj/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method protected putUpdateStoredBlock(Lorg/bitcoinj/core/StoredBlock;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/16 v4, 0x1c

    .line 615
    :try_start_0
    iget-object v5, p0, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    .line 616
    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/sql/Connection;

    invoke-virtual {p0}, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->getInsertHeadersSQL()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v5

    new-array v6, v4, [B

    .line 619
    invoke-virtual {p1}, Lorg/bitcoinj/core/StoredBlock;->getHeader()Lorg/bitcoinj/core/Block;

    move-result-object v7

    invoke-virtual {v7}, Lorg/bitcoinj/core/Block;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v7

    invoke-virtual {v7}, Lorg/bitcoinj/core/Sha256Hash;->getBytes()[B

    move-result-object v7

    invoke-static {v7, v2, v6, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 620
    invoke-interface {v5, v3, v6}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 621
    invoke-virtual {p1}, Lorg/bitcoinj/core/StoredBlock;->getChainWork()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v6

    invoke-interface {v5, v0, v6}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v6, 0x3

    .line 622
    invoke-virtual {p1}, Lorg/bitcoinj/core/StoredBlock;->getHeight()I

    move-result v7

    invoke-interface {v5, v6, v7}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 623
    invoke-virtual {p1}, Lorg/bitcoinj/core/StoredBlock;->getHeader()Lorg/bitcoinj/core/Block;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bitcoinj/core/Block;->cloneAsHeader()Lorg/bitcoinj/core/Block;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bitcoinj/core/Block;->unsafeBitcoinSerialize()[B

    move-result-object v6

    invoke-interface {v5, v2, v6}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v6, 0x5

    .line 624
    invoke-interface {v5, v6, p2}, Ljava/sql/PreparedStatement;->setBoolean(IZ)V

    .line 625
    invoke-interface {v5}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 626
    invoke-interface {v5}, Ljava/sql/PreparedStatement;->close()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    .line 630
    invoke-virtual {v5}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->getDuplicateKeyErrorCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz p2, :cond_0

    .line 633
    iget-object p2, p0, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {p2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/sql/Connection;

    invoke-virtual {p0}, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->getUpdateHeadersSQL()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p2

    .line 634
    invoke-interface {p2, v3, v3}, Ljava/sql/PreparedStatement;->setBoolean(IZ)V

    new-array v3, v4, [B

    .line 637
    invoke-virtual {p1}, Lorg/bitcoinj/core/StoredBlock;->getHeader()Lorg/bitcoinj/core/Block;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bitcoinj/core/Block;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bitcoinj/core/Sha256Hash;->getBytes()[B

    move-result-object p1

    invoke-static {p1, v2, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 638
    invoke-interface {p2, v0, v3}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 639
    invoke-interface {p2}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 640
    invoke-interface {p2}, Ljava/sql/PreparedStatement;->close()V

    :goto_0
    return-void

    .line 631
    :cond_0
    throw v5
.end method

.method public removeUnspentTransactionOutput(Lorg/bitcoinj/core/UTXO;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    .line 988
    invoke-virtual {p0}, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->maybeConnect()V

    .line 990
    invoke-virtual {p1}, Lorg/bitcoinj/core/UTXO;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bitcoinj/core/UTXO;->getIndex()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->getTransactionOutput(Lorg/bitcoinj/core/Sha256Hash;J)Lorg/bitcoinj/core/UTXO;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 993
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/sql/Connection;

    .line 994
    invoke-virtual {p0}, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->getDeleteOpenoutputsSQL()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 995
    invoke-virtual {p1}, Lorg/bitcoinj/core/UTXO;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bitcoinj/core/Sha256Hash;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x2

    .line 997
    invoke-virtual {p1}, Lorg/bitcoinj/core/UTXO;->getIndex()J

    move-result-wide v2

    long-to-int p1, v2

    invoke-interface {v0, v1, p1}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 998
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 999
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1001
    new-instance v0, Lorg/bitcoinj/store/BlockStoreException;

    invoke-direct {v0, p1}, Lorg/bitcoinj/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 991
    :cond_0
    new-instance p1, Lorg/bitcoinj/store/BlockStoreException;

    const-string v0, "Tried to remove a UTXO from DatabaseFullPrunedBlockStore that it didn\'t have!"

    invoke-direct {p1, v0}, Lorg/bitcoinj/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public resetStore()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    .line 1092
    invoke-virtual {p0}, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->maybeConnect()V

    .line 1094
    :try_start_0
    invoke-virtual {p0}, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->deleteStore()V

    .line 1095
    invoke-direct {p0}, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->createTables()V

    .line 1096
    invoke-direct {p0}, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->initFromDatabase()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1098
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setChainHead(Lorg/bitcoinj/core/StoredBlock;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    .line 858
    invoke-virtual {p1}, Lorg/bitcoinj/core/StoredBlock;->getHeader()Lorg/bitcoinj/core/Block;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/core/Block;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v0

    .line 859
    iput-object v0, p0, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->chainHeadHash:Lorg/bitcoinj/core/Sha256Hash;

    .line 860
    iput-object p1, p0, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->chainHeadBlock:Lorg/bitcoinj/core/StoredBlock;

    .line 861
    invoke-virtual {p0}, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->maybeConnect()V

    .line 863
    :try_start_0
    iget-object p1, p0, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/sql/Connection;

    .line 864
    invoke-virtual {p0}, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->getUpdateSettingsSLQ()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1

    const/4 v1, 0x2

    const-string v2, "chainhead"

    .line 865
    invoke-interface {p1, v1, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 v1, 0x1

    .line 866
    invoke-virtual {v0}, Lorg/bitcoinj/core/Sha256Hash;->getBytes()[B

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 867
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 868
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 870
    new-instance v0, Lorg/bitcoinj/store/BlockStoreException;

    invoke-direct {v0, p1}, Lorg/bitcoinj/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setVerifiedChainHead(Lorg/bitcoinj/core/StoredBlock;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    .line 881
    invoke-virtual {p1}, Lorg/bitcoinj/core/StoredBlock;->getHeader()Lorg/bitcoinj/core/Block;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/core/Block;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v0

    .line 882
    iput-object v0, p0, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->verifiedChainHeadHash:Lorg/bitcoinj/core/Sha256Hash;

    .line 883
    iput-object p1, p0, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->verifiedChainHeadBlock:Lorg/bitcoinj/core/StoredBlock;

    .line 884
    invoke-virtual {p0}, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->maybeConnect()V

    .line 886
    :try_start_0
    iget-object v1, p0, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/sql/Connection;

    .line 887
    invoke-virtual {p0}, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->getUpdateSettingsSLQ()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1

    const/4 v2, 0x2

    const-string v3, "verifiedchainhead"

    .line 888
    invoke-interface {v1, v2, v3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 v2, 0x1

    .line 889
    invoke-virtual {v0}, Lorg/bitcoinj/core/Sha256Hash;->getBytes()[B

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 890
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 891
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 895
    iget-object v0, p0, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->chainHeadBlock:Lorg/bitcoinj/core/StoredBlock;

    invoke-virtual {v0}, Lorg/bitcoinj/core/StoredBlock;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Lorg/bitcoinj/core/StoredBlock;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 896
    invoke-virtual {p0, p1}, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->setChainHead(Lorg/bitcoinj/core/StoredBlock;)V

    .line 897
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoinj/core/StoredBlock;->getHeight()I

    move-result p1

    iget v0, p0, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->fullStoreDepth:I

    sub-int/2addr p1, v0

    invoke-direct {p0, p1}, Lorg/bitcoinj/store/DatabaseFullPrunedBlockStore;->removeUndoableBlocksWhereHeightIsLessThan(I)V

    return-void

    :catch_0
    move-exception p1

    .line 893
    new-instance v0, Lorg/bitcoinj/store/BlockStoreException;

    invoke-direct {v0, p1}, Lorg/bitcoinj/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
