.class public final Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "ServerState.java"

# interfaces
.implements Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannelOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder<",
        "Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;",
        ">;",
        "Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannelOrBuilder;"
    }
.end annotation


# instance fields
.field private bestValueSignature_:Lcom/google/protobuf/ByteString;

.field private bestValueToMe_:J

.field private bitField0_:I

.field private clientKey_:Lcom/google/protobuf/ByteString;

.field private clientOutput_:Lcom/google/protobuf/ByteString;

.field private contractTransaction_:Lcom/google/protobuf/ByteString;

.field private majorVersion_:I

.field private myKey_:Lcom/google/protobuf/ByteString;

.field private refundTransactionUnlockTimeSecs_:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1261
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 1471
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bestValueSignature_:Lcom/google/protobuf/ByteString;

    .line 1538
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->contractTransaction_:Lcom/google/protobuf/ByteString;

    .line 1573
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->clientOutput_:Lcom/google/protobuf/ByteString;

    .line 1608
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->myKey_:Lcom/google/protobuf/ByteString;

    const/4 v0, 0x1

    .line 1643
    iput v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->majorVersion_:I

    .line 1675
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->clientKey_:Lcom/google/protobuf/ByteString;

    .line 1262
    invoke-direct {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0

    .line 1267
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 1471
    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bestValueSignature_:Lcom/google/protobuf/ByteString;

    .line 1538
    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->contractTransaction_:Lcom/google/protobuf/ByteString;

    .line 1573
    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->clientOutput_:Lcom/google/protobuf/ByteString;

    .line 1608
    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->myKey_:Lcom/google/protobuf/ByteString;

    const/4 p1, 0x1

    .line 1643
    iput p1, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->majorVersion_:I

    .line 1675
    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->clientKey_:Lcom/google/protobuf/ByteString;

    .line 1268
    invoke-direct {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoinj/protocols/channels/ServerState$1;)V
    .locals 0

    .line 1244
    invoke-direct {p0, p1}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$1200()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;
    .locals 1

    .line 1244
    invoke-static {}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->create()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;
    .locals 1

    .line 1275
    new-instance v0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    invoke-direct {v0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1250
    invoke-static {}, Lorg/bitcoinj/protocols/channels/ServerState;->access$900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 1271
    invoke-static {}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->access$1400()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 1244
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->build()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1244
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->build()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;
    .locals 2

    .line 1313
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->buildPartial()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;

    move-result-object v0

    .line 1314
    invoke-virtual {v0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 1315
    :cond_0
    invoke-static {v0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 1244
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->buildPartial()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1244
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->buildPartial()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;
    .locals 6

    .line 1321
    new-instance v0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoinj/protocols/channels/ServerState$1;)V

    .line 1322
    iget v1, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1327
    :goto_0
    iget-wide v4, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bestValueToMe_:J

    invoke-static {v0, v4, v5}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->access$1602(Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;J)J

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 1331
    :cond_1
    iget-object v2, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bestValueSignature_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v2}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->access$1702(Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 1335
    :cond_2
    iget-wide v4, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->refundTransactionUnlockTimeSecs_:J

    invoke-static {v0, v4, v5}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->access$1802(Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;J)J

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    .line 1339
    :cond_3
    iget-object v2, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->contractTransaction_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v2}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->access$1902(Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_4

    or-int/lit8 v3, v3, 0x10

    .line 1343
    :cond_4
    iget-object v2, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->clientOutput_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v2}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->access$2002(Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    and-int/lit8 v2, v1, 0x20

    const/16 v4, 0x20

    if-ne v2, v4, :cond_5

    or-int/lit8 v3, v3, 0x20

    .line 1347
    :cond_5
    iget-object v2, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->myKey_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v2}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->access$2102(Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    and-int/lit8 v2, v1, 0x40

    const/16 v4, 0x40

    if-ne v2, v4, :cond_6

    or-int/lit8 v3, v3, 0x40

    .line 1351
    :cond_6
    iget v2, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->majorVersion_:I

    invoke-static {v0, v2}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->access$2202(Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;I)I

    const/16 v2, 0x80

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_7

    or-int/lit16 v3, v3, 0x80

    .line 1355
    :cond_7
    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->clientKey_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v1}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->access$2302(Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 1356
    invoke-static {v0, v3}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->access$2402(Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;I)I

    .line 1357
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1244
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->clear()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 1244
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->clear()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1244
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->clear()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1244
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->clear()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;
    .locals 3

    .line 1279
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    const-wide/16 v0, 0x0

    .line 1280
    iput-wide v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bestValueToMe_:J

    .line 1281
    iget v2, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    .line 1282
    sget-object v2, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v2, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bestValueSignature_:Lcom/google/protobuf/ByteString;

    .line 1283
    iget v2, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    .line 1284
    iput-wide v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->refundTransactionUnlockTimeSecs_:J

    and-int/lit8 v0, v2, -0x5

    .line 1285
    iput v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    .line 1286
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->contractTransaction_:Lcom/google/protobuf/ByteString;

    .line 1287
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    .line 1288
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->clientOutput_:Lcom/google/protobuf/ByteString;

    .line 1289
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    .line 1290
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->myKey_:Lcom/google/protobuf/ByteString;

    .line 1291
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    const/4 v1, 0x1

    .line 1292
    iput v1, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->majorVersion_:I

    and-int/lit8 v0, v0, -0x41

    .line 1293
    iput v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    .line 1294
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->clientKey_:Lcom/google/protobuf/ByteString;

    .line 1295
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearBestValueSignature()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;
    .locals 1

    .line 1500
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    .line 1501
    invoke-static {}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->getDefaultInstance()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->getBestValueSignature()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bestValueSignature_:Lcom/google/protobuf/ByteString;

    .line 1502
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->onChanged()V

    return-object p0
.end method

.method public clearBestValueToMe()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;
    .locals 2

    .line 1465
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 1466
    iput-wide v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bestValueToMe_:J

    .line 1467
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->onChanged()V

    return-object p0
.end method

.method public clearClientKey()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;
    .locals 1

    .line 1720
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    .line 1721
    invoke-static {}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->getDefaultInstance()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->getClientKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->clientKey_:Lcom/google/protobuf/ByteString;

    .line 1722
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->onChanged()V

    return-object p0
.end method

.method public clearClientOutput()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;
    .locals 1

    .line 1602
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    .line 1603
    invoke-static {}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->getDefaultInstance()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->getClientOutput()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->clientOutput_:Lcom/google/protobuf/ByteString;

    .line 1604
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->onChanged()V

    return-object p0
.end method

.method public clearContractTransaction()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;
    .locals 1

    .line 1567
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    .line 1568
    invoke-static {}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->getDefaultInstance()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->getContractTransaction()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->contractTransaction_:Lcom/google/protobuf/ByteString;

    .line 1569
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMajorVersion()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;
    .locals 1

    .line 1669
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    const/4 v0, 0x1

    .line 1670
    iput v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->majorVersion_:I

    .line 1671
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMyKey()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;
    .locals 1

    .line 1637
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    .line 1638
    invoke-static {}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->getDefaultInstance()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->getMyKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->myKey_:Lcom/google/protobuf/ByteString;

    .line 1639
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->onChanged()V

    return-object p0
.end method

.method public clearRefundTransactionUnlockTimeSecs()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;
    .locals 2

    .line 1532
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 1533
    iput-wide v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->refundTransactionUnlockTimeSecs_:J

    .line 1534
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1244
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->clone()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 1244
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->clone()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 1244
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->clone()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1244
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->clone()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1244
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->clone()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1244
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->clone()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;
    .locals 2

    .line 1300
    invoke-static {}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->create()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->buildPartial()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->mergeFrom(Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;)Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBestValueSignature()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1482
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bestValueSignature_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getBestValueToMe()J
    .locals 2

    .line 1450
    iget-wide v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bestValueToMe_:J

    return-wide v0
.end method

.method public getClientKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1694
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->clientKey_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getClientOutput()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1584
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->clientOutput_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getContractTransaction()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1549
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->contractTransaction_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1244
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->getDefaultInstanceForType()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1244
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->getDefaultInstanceForType()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;
    .locals 1

    .line 1309
    invoke-static {}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->getDefaultInstance()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1305
    invoke-static {}, Lorg/bitcoinj/protocols/channels/ServerState;->access$900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getMajorVersion()I
    .locals 1

    .line 1654
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->majorVersion_:I

    return v0
.end method

.method public getMyKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1619
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->myKey_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getRefundTransactionUnlockTimeSecs()J
    .locals 2

    .line 1517
    iget-wide v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->refundTransactionUnlockTimeSecs_:J

    return-wide v0
.end method

.method public hasBestValueSignature()Z
    .locals 2

    .line 1476
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasBestValueToMe()Z
    .locals 2

    .line 1444
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasClientKey()Z
    .locals 2

    .line 1684
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasClientOutput()Z
    .locals 2

    .line 1578
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasContractTransaction()Z
    .locals 2

    .line 1543
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMajorVersion()Z
    .locals 2

    .line 1648
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMyKey()Z
    .locals 2

    .line 1613
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRefundTransactionUnlockTimeSecs()Z
    .locals 2

    .line 1511
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .line 1255
    invoke-static {}, Lorg/bitcoinj/protocols/channels/ServerState;->access$1000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;

    const-class v2, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    .line 1256
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1401
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->hasBestValueToMe()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1405
    :cond_0
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->hasRefundTransactionUnlockTimeSecs()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 1409
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->hasContractTransaction()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 1413
    :cond_2
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->hasMyKey()Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1244
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1244
    invoke-virtual {p0, p1}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1244
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1244
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1244
    invoke-virtual {p0, p1}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1244
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1426
    :try_start_0
    sget-object v1, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 1432
    invoke-virtual {p0, p1}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->mergeFrom(Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;)Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1428
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1429
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 1432
    invoke-virtual {p0, v0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->mergeFrom(Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;)Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;
    .locals 1

    .line 1362
    instance-of v0, p1, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;

    if-eqz v0, :cond_0

    .line 1363
    check-cast p1, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;

    invoke-virtual {p0, p1}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->mergeFrom(Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;)Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    move-result-object p1

    return-object p1

    .line 1365
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;)Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;
    .locals 2

    .line 1371
    invoke-static {}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->getDefaultInstance()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 1372
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->hasBestValueToMe()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1373
    invoke-virtual {p1}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->getBestValueToMe()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->setBestValueToMe(J)Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    .line 1375
    :cond_1
    invoke-virtual {p1}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->hasBestValueSignature()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1376
    invoke-virtual {p1}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->getBestValueSignature()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->setBestValueSignature(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    .line 1378
    :cond_2
    invoke-virtual {p1}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->hasRefundTransactionUnlockTimeSecs()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1379
    invoke-virtual {p1}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->getRefundTransactionUnlockTimeSecs()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->setRefundTransactionUnlockTimeSecs(J)Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    .line 1381
    :cond_3
    invoke-virtual {p1}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->hasContractTransaction()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1382
    invoke-virtual {p1}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->getContractTransaction()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->setContractTransaction(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    .line 1384
    :cond_4
    invoke-virtual {p1}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->hasClientOutput()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1385
    invoke-virtual {p1}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->getClientOutput()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->setClientOutput(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    .line 1387
    :cond_5
    invoke-virtual {p1}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->hasMyKey()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1388
    invoke-virtual {p1}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->getMyKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->setMyKey(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    .line 1390
    :cond_6
    invoke-virtual {p1}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->hasMajorVersion()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1391
    invoke-virtual {p1}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->getMajorVersion()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->setMajorVersion(I)Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    .line 1393
    :cond_7
    invoke-virtual {p1}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->hasClientKey()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1394
    invoke-virtual {p1}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->getClientKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->setClientKey(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    .line 1396
    :cond_8
    invoke-virtual {p1}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    return-object p0
.end method

.method public setBestValueSignature(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 1491
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    .line 1492
    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bestValueSignature_:Lcom/google/protobuf/ByteString;

    .line 1493
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 1489
    throw p1
.end method

.method public setBestValueToMe(J)Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;
    .locals 1

    .line 1456
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    .line 1457
    iput-wide p1, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bestValueToMe_:J

    .line 1458
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->onChanged()V

    return-object p0
.end method

.method public setClientKey(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 1707
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    .line 1708
    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->clientKey_:Lcom/google/protobuf/ByteString;

    .line 1709
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 1705
    throw p1
.end method

.method public setClientOutput(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 1593
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    .line 1594
    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->clientOutput_:Lcom/google/protobuf/ByteString;

    .line 1595
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 1591
    throw p1
.end method

.method public setContractTransaction(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 1558
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    .line 1559
    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->contractTransaction_:Lcom/google/protobuf/ByteString;

    .line 1560
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 1556
    throw p1
.end method

.method public setMajorVersion(I)Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;
    .locals 1

    .line 1660
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    .line 1661
    iput p1, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->majorVersion_:I

    .line 1662
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->onChanged()V

    return-object p0
.end method

.method public setMyKey(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 1628
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    .line 1629
    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->myKey_:Lcom/google/protobuf/ByteString;

    .line 1630
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 1626
    throw p1
.end method

.method public setRefundTransactionUnlockTimeSecs(J)Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;
    .locals 1

    .line 1523
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    .line 1524
    iput-wide p1, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->refundTransactionUnlockTimeSecs_:J

    .line 1525
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->onChanged()V

    return-object p0
.end method
