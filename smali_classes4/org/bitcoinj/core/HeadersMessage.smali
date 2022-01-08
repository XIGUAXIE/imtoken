.class public Lorg/bitcoinj/core/HeadersMessage;
.super Lorg/bitcoinj/core/Message;
.source "HeadersMessage.java"


# static fields
.field public static final MAX_HEADERS:I = 0x7d0

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private blockHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/Block;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Lorg/bitcoinj/core/HeadersMessage;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/core/HeadersMessage;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/core/NetworkParameters;",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/Block;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1}, Lorg/bitcoinj/core/Message;-><init>(Lorg/bitcoinj/core/NetworkParameters;)V

    .line 55
    iput-object p2, p0, Lorg/bitcoinj/core/HeadersMessage;->blockHeaders:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2, v0}, Lorg/bitcoinj/core/Message;-><init>(Lorg/bitcoinj/core/NetworkParameters;[BI)V

    return-void
.end method

.method public varargs constructor <init>(Lorg/bitcoinj/core/NetworkParameters;[Lorg/bitcoinj/core/Block;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1}, Lorg/bitcoinj/core/Message;-><init>(Lorg/bitcoinj/core/NetworkParameters;)V

    .line 50
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/core/HeadersMessage;->blockHeaders:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bitcoinSerializeToStream(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    new-instance v0, Lorg/bitcoinj/core/VarInt;

    iget-object v1, p0, Lorg/bitcoinj/core/HeadersMessage;->blockHeaders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lorg/bitcoinj/core/VarInt;-><init>(J)V

    invoke-virtual {v0}, Lorg/bitcoinj/core/VarInt;->encode()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 61
    iget-object v0, p0, Lorg/bitcoinj/core/HeadersMessage;->blockHeaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/core/Block;

    .line 62
    invoke-virtual {v1}, Lorg/bitcoinj/core/Block;->cloneAsHeader()Lorg/bitcoinj/core/Block;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/bitcoinj/core/Block;->bitcoinSerializeToStream(Ljava/io/OutputStream;)V

    const/4 v1, 0x0

    .line 63
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getBlockHeaders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/Block;",
            ">;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lorg/bitcoinj/core/HeadersMessage;->blockHeaders:Ljava/util/List;

    return-object v0
.end method

.method protected parse()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;
        }
    .end annotation

    .line 69
    invoke-virtual {p0}, Lorg/bitcoinj/core/HeadersMessage;->readVarInt()J

    move-result-wide v0

    const-wide/16 v2, 0x7d0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_4

    .line 74
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/bitcoinj/core/HeadersMessage;->blockHeaders:Ljava/util/List;

    .line 75
    iget-object v2, p0, Lorg/bitcoinj/core/HeadersMessage;->params:Lorg/bitcoinj/core/NetworkParameters;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/bitcoinj/core/NetworkParameters;->getSerializer(Z)Lorg/bitcoinj/core/BitcoinSerializer;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    int-to-long v5, v4

    const/high16 v7, -0x80000000

    cmp-long v8, v5, v0

    if-gez v8, :cond_1

    .line 78
    iget-object v5, p0, Lorg/bitcoinj/core/HeadersMessage;->payload:[B

    iget v6, p0, Lorg/bitcoinj/core/HeadersMessage;->cursor:I

    invoke-virtual {v2, v5, v6, v7}, Lorg/bitcoinj/core/BitcoinSerializer;->makeBlock([BII)Lorg/bitcoinj/core/Block;

    move-result-object v5

    .line 79
    invoke-virtual {v5}, Lorg/bitcoinj/core/Block;->hasTransactions()Z

    move-result v6

    if-nez v6, :cond_0

    .line 82
    iget v6, p0, Lorg/bitcoinj/core/HeadersMessage;->cursor:I

    iget v7, v5, Lorg/bitcoinj/core/Block;->optimalEncodingMessageSize:I

    add-int/2addr v6, v7

    iput v6, p0, Lorg/bitcoinj/core/HeadersMessage;->cursor:I

    .line 83
    iget-object v6, p0, Lorg/bitcoinj/core/HeadersMessage;->blockHeaders:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 80
    :cond_0
    new-instance v0, Lorg/bitcoinj/core/ProtocolException;

    const-string v1, "Block header does not end with a null byte"

    invoke-direct {v0, v1}, Lorg/bitcoinj/core/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_1
    iget v2, p0, Lorg/bitcoinj/core/HeadersMessage;->length:I

    if-ne v2, v7, :cond_2

    .line 87
    iget v2, p0, Lorg/bitcoinj/core/HeadersMessage;->cursor:I

    iget v4, p0, Lorg/bitcoinj/core/HeadersMessage;->offset:I

    sub-int/2addr v2, v4

    iput v2, p0, Lorg/bitcoinj/core/HeadersMessage;->length:I

    .line 90
    :cond_2
    sget-object v2, Lorg/bitcoinj/core/HeadersMessage;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_1
    int-to-long v4, v3

    cmp-long v2, v4, v0

    if-gez v2, :cond_3

    .line 92
    sget-object v2, Lorg/bitcoinj/core/HeadersMessage;->log:Lorg/slf4j/Logger;

    iget-object v4, p0, Lorg/bitcoinj/core/HeadersMessage;->blockHeaders:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bitcoinj/core/Block;

    invoke-virtual {v4}, Lorg/bitcoinj/core/Block;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-void

    .line 71
    :cond_4
    new-instance v2, Lorg/bitcoinj/core/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Too many headers: got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " which is larger than "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x7d0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/bitcoinj/core/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
