.class public Lorg/bitcoinj/utils/BlockFileLoader;
.super Ljava/lang/Object;
.source "BlockFileLoader.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lorg/bitcoinj/core/Block;",
        ">;",
        "Ljava/util/Iterator<",
        "Lorg/bitcoinj/core/Block;",
        ">;"
    }
.end annotation


# instance fields
.field private currentFileStream:Ljava/io/FileInputStream;

.field private fileIt:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private nextBlock:Lorg/bitcoinj/core/Block;

.field private params:Lorg/bitcoinj/core/NetworkParameters;


# direct methods
.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/core/NetworkParameters;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lorg/bitcoinj/utils/BlockFileLoader;->currentFileStream:Ljava/io/FileInputStream;

    .line 76
    iput-object v0, p0, Lorg/bitcoinj/utils/BlockFileLoader;->nextBlock:Lorg/bitcoinj/core/Block;

    .line 80
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    iput-object p2, p0, Lorg/bitcoinj/utils/BlockFileLoader;->fileIt:Ljava/util/Iterator;

    .line 81
    iput-object p1, p0, Lorg/bitcoinj/utils/BlockFileLoader;->params:Lorg/bitcoinj/core/NetworkParameters;

    return-void
.end method

.method public static getReferenceClientBlockFileList()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    const-string v0, "os.name"

    .line 55
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "win"

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "APPDATA"

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\\.bitcoin\\blocks\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    const-string v1, "mac"

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string v2, "user.home"

    if-gez v1, :cond_2

    const-string v1, "darwin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    goto :goto_0

    .line 61
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/.bitcoin/blocks/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 59
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/Library/Application Support/Bitcoin/blocks/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    :goto_1
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 66
    :goto_2
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    const-string v8, "blk%05d.dat"

    invoke-static {v6, v8, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    return-object v1

    .line 69
    :cond_3
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method private loadNextBlock()V
    .locals 9

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 103
    :try_start_0
    iget-object v1, p0, Lorg/bitcoinj/utils/BlockFileLoader;->fileIt:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/bitcoinj/utils/BlockFileLoader;->currentFileStream:Ljava/io/FileInputStream;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lorg/bitcoinj/utils/BlockFileLoader;->currentFileStream:Ljava/io/FileInputStream;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    goto/16 :goto_3

    :catch_0
    nop

    .line 106
    iput-object v0, p0, Lorg/bitcoinj/utils/BlockFileLoader;->currentFileStream:Ljava/io/FileInputStream;

    .line 107
    iget-object v1, p0, Lorg/bitcoinj/utils/BlockFileLoader;->fileIt:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_3

    .line 112
    :cond_1
    :goto_1
    :try_start_1
    iget-object v1, p0, Lorg/bitcoinj/utils/BlockFileLoader;->currentFileStream:Ljava/io/FileInputStream;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lorg/bitcoinj/utils/BlockFileLoader;->currentFileStream:Ljava/io/FileInputStream;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    if-lez v1, :cond_9

    .line 129
    :try_start_2
    iget-object v1, p0, Lorg/bitcoinj/utils/BlockFileLoader;->currentFileStream:Ljava/io/FileInputStream;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->read()I

    move-result v1

    :cond_2
    :goto_2
    const/4 v2, -0x1

    if-eq v1, v2, :cond_6

    int-to-long v1, v1

    .line 131
    iget-object v3, p0, Lorg/bitcoinj/utils/BlockFileLoader;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {v3}, Lorg/bitcoinj/core/NetworkParameters;->getPacketMagic()J

    move-result-wide v3

    const/16 v5, 0x18

    ushr-long/2addr v3, v5

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    cmp-long v7, v1, v3

    if-eqz v7, :cond_3

    .line 132
    iget-object v1, p0, Lorg/bitcoinj/utils/BlockFileLoader;->currentFileStream:Ljava/io/FileInputStream;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->read()I

    move-result v1

    goto :goto_2

    .line 135
    :cond_3
    iget-object v1, p0, Lorg/bitcoinj/utils/BlockFileLoader;->currentFileStream:Ljava/io/FileInputStream;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->read()I

    move-result v1

    int-to-long v2, v1

    .line 136
    iget-object v4, p0, Lorg/bitcoinj/utils/BlockFileLoader;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {v4}, Lorg/bitcoinj/core/NetworkParameters;->getPacketMagic()J

    move-result-wide v7

    const/16 v4, 0x10

    ushr-long/2addr v7, v4

    and-long/2addr v7, v5

    cmp-long v4, v2, v7

    if-eqz v4, :cond_4

    goto :goto_2

    .line 138
    :cond_4
    iget-object v1, p0, Lorg/bitcoinj/utils/BlockFileLoader;->currentFileStream:Ljava/io/FileInputStream;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->read()I

    move-result v1

    int-to-long v2, v1

    .line 139
    iget-object v4, p0, Lorg/bitcoinj/utils/BlockFileLoader;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {v4}, Lorg/bitcoinj/core/NetworkParameters;->getPacketMagic()J

    move-result-wide v7

    const/16 v4, 0x8

    ushr-long/2addr v7, v4

    and-long/2addr v7, v5

    cmp-long v4, v2, v7

    if-eqz v4, :cond_5

    goto :goto_2

    .line 141
    :cond_5
    iget-object v1, p0, Lorg/bitcoinj/utils/BlockFileLoader;->currentFileStream:Ljava/io/FileInputStream;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->read()I

    move-result v1

    int-to-long v2, v1

    .line 142
    iget-object v4, p0, Lorg/bitcoinj/utils/BlockFileLoader;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {v4}, Lorg/bitcoinj/core/NetworkParameters;->getPacketMagic()J

    move-result-wide v7

    and-long v4, v7, v5

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    :cond_6
    const/4 v1, 0x4

    new-array v2, v1, [B

    .line 146
    iget-object v3, p0, Lorg/bitcoinj/utils/BlockFileLoader;->currentFileStream:Ljava/io/FileInputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, v1}, Ljava/io/FileInputStream;->read([BII)I

    .line 147
    invoke-static {v2}, Lorg/bitcoinj/core/Utils;->reverseBytes([B)[B

    move-result-object v1

    invoke-static {v1, v4}, Lorg/bitcoinj/core/Utils;->readUint32BE([BI)J

    move-result-wide v1

    const-wide/32 v5, 0x1e8480

    cmp-long v3, v1, v5

    if-gtz v3, :cond_0

    const-wide/16 v5, 0x0

    cmp-long v3, v1, v5

    if-gtz v3, :cond_7

    goto/16 :goto_0

    :cond_7
    long-to-int v2, v1

    .line 151
    new-array v1, v2, [B

    .line 152
    iget-object v3, p0, Lorg/bitcoinj/utils/BlockFileLoader;->currentFileStream:Ljava/io/FileInputStream;

    invoke-virtual {v3, v1, v4, v2}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 154
    :try_start_3
    iget-object v2, p0, Lorg/bitcoinj/utils/BlockFileLoader;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {v2}, Lorg/bitcoinj/core/NetworkParameters;->getDefaultSerializer()Lorg/bitcoinj/core/MessageSerializer;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/bitcoinj/core/MessageSerializer;->makeBlock([B)Lorg/bitcoinj/core/Block;

    move-result-object v1

    iput-object v1, p0, Lorg/bitcoinj/utils/BlockFileLoader;->nextBlock:Lorg/bitcoinj/core/Block;
    :try_end_3
    .catch Lorg/bitcoinj/core/ProtocolException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_8
    :goto_3
    return-void

    .line 156
    :catch_1
    :try_start_4
    iput-object v0, p0, Lorg/bitcoinj/utils/BlockFileLoader;->nextBlock:Lorg/bitcoinj/core/Block;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 161
    :catch_2
    iput-object v0, p0, Lorg/bitcoinj/utils/BlockFileLoader;->currentFileStream:Ljava/io/FileInputStream;

    goto/16 :goto_0

    .line 115
    :catch_3
    iput-object v0, p0, Lorg/bitcoinj/utils/BlockFileLoader;->currentFileStream:Ljava/io/FileInputStream;

    .line 117
    :cond_9
    iget-object v1, p0, Lorg/bitcoinj/utils/BlockFileLoader;->fileIt:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_a

    .line 118
    iput-object v0, p0, Lorg/bitcoinj/utils/BlockFileLoader;->nextBlock:Lorg/bitcoinj/core/Block;

    .line 119
    iput-object v0, p0, Lorg/bitcoinj/utils/BlockFileLoader;->currentFileStream:Ljava/io/FileInputStream;

    return-void

    .line 123
    :cond_a
    :try_start_5
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lorg/bitcoinj/utils/BlockFileLoader;->fileIt:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lorg/bitcoinj/utils/BlockFileLoader;->currentFileStream:Ljava/io/FileInputStream;
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_1

    .line 125
    :catch_4
    iput-object v0, p0, Lorg/bitcoinj/utils/BlockFileLoader;->currentFileStream:Ljava/io/FileInputStream;

    goto/16 :goto_1
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/bitcoinj/utils/BlockFileLoader;->nextBlock:Lorg/bitcoinj/core/Block;

    if-nez v0, :cond_0

    .line 87
    invoke-direct {p0}, Lorg/bitcoinj/utils/BlockFileLoader;->loadNextBlock()V

    .line 88
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/utils/BlockFileLoader;->nextBlock:Lorg/bitcoinj/core/Block;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/bitcoinj/core/Block;",
            ">;"
        }
    .end annotation

    return-object p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lorg/bitcoinj/utils/BlockFileLoader;->next()Lorg/bitcoinj/core/Block;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/bitcoinj/core/Block;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .line 93
    invoke-virtual {p0}, Lorg/bitcoinj/utils/BlockFileLoader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lorg/bitcoinj/utils/BlockFileLoader;->nextBlock:Lorg/bitcoinj/core/Block;

    const/4 v1, 0x0

    .line 96
    iput-object v1, p0, Lorg/bitcoinj/utils/BlockFileLoader;->nextBlock:Lorg/bitcoinj/core/Block;

    return-object v0

    .line 94
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 169
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
