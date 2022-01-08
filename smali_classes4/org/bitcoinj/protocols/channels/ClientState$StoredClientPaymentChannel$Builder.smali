.class public final Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "ClientState.java"

# interfaces
.implements Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannelOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder<",
        "Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;",
        ">;",
        "Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannelOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private closeTransactionHash_:Lcom/google/protobuf/ByteString;

.field private contractTransaction_:Lcom/google/protobuf/ByteString;

.field private expiryTime_:J

.field private id_:Lcom/google/protobuf/ByteString;

.field private majorVersion_:I

.field private myKey_:Lcom/google/protobuf/ByteString;

.field private myPublicKey_:Lcom/google/protobuf/ByteString;

.field private refundFees_:J

.field private refundTransaction_:Lcom/google/protobuf/ByteString;

.field private serverKey_:Lcom/google/protobuf/ByteString;

.field private valueToMe_:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1458
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 1675
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->id_:Lcom/google/protobuf/ByteString;

    .line 1710
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->contractTransaction_:Lcom/google/protobuf/ByteString;

    .line 1745
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->refundTransaction_:Lcom/google/protobuf/ByteString;

    .line 1780
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->myPublicKey_:Lcom/google/protobuf/ByteString;

    .line 1815
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->myKey_:Lcom/google/protobuf/ByteString;

    .line 1946
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->closeTransactionHash_:Lcom/google/protobuf/ByteString;

    const/4 v0, 0x1

    .line 2005
    iput v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->majorVersion_:I

    .line 2085
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->serverKey_:Lcom/google/protobuf/ByteString;

    .line 1459
    invoke-direct {p0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0

    .line 1464
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 1675
    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->id_:Lcom/google/protobuf/ByteString;

    .line 1710
    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->contractTransaction_:Lcom/google/protobuf/ByteString;

    .line 1745
    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->refundTransaction_:Lcom/google/protobuf/ByteString;

    .line 1780
    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->myPublicKey_:Lcom/google/protobuf/ByteString;

    .line 1815
    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->myKey_:Lcom/google/protobuf/ByteString;

    .line 1946
    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->closeTransactionHash_:Lcom/google/protobuf/ByteString;

    const/4 p1, 0x1

    .line 2005
    iput p1, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->majorVersion_:I

    .line 2085
    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->serverKey_:Lcom/google/protobuf/ByteString;

    .line 1465
    invoke-direct {p0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoinj/protocols/channels/ClientState$1;)V
    .locals 0

    .line 1441
    invoke-direct {p0, p1}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$1200()Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;
    .locals 1

    .line 1441
    invoke-static {}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->create()Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;
    .locals 1

    .line 1472
    new-instance v0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    invoke-direct {v0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1447
    invoke-static {}, Lorg/bitcoinj/protocols/channels/ClientState;->access$900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 1468
    invoke-static {}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->access$1400()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 1441
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->build()Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1441
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->build()Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;
    .locals 2

    .line 1516
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->buildPartial()Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;

    move-result-object v0

    .line 1517
    invoke-virtual {v0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 1518
    :cond_0
    invoke-static {v0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 1441
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->buildPartial()Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1441
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->buildPartial()Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;
    .locals 6

    .line 1524
    new-instance v0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoinj/protocols/channels/ClientState$1;)V

    .line 1525
    iget v1, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1530
    :goto_0
    iget-object v2, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->id_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v2}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->access$1602(Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 1534
    :cond_1
    iget-object v2, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->contractTransaction_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v2}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->access$1702(Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 1538
    :cond_2
    iget-object v2, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->refundTransaction_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v2}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->access$1802(Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    .line 1542
    :cond_3
    iget-object v2, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->myPublicKey_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v2}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->access$1902(Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_4

    or-int/lit8 v3, v3, 0x10

    .line 1546
    :cond_4
    iget-object v2, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->myKey_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v2}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->access$2002(Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    and-int/lit8 v2, v1, 0x20

    const/16 v4, 0x20

    if-ne v2, v4, :cond_5

    or-int/lit8 v3, v3, 0x20

    .line 1550
    :cond_5
    iget-wide v4, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->valueToMe_:J

    invoke-static {v0, v4, v5}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->access$2102(Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;J)J

    and-int/lit8 v2, v1, 0x40

    const/16 v4, 0x40

    if-ne v2, v4, :cond_6

    or-int/lit8 v3, v3, 0x40

    .line 1554
    :cond_6
    iget-wide v4, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->refundFees_:J

    invoke-static {v0, v4, v5}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->access$2202(Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;J)J

    and-int/lit16 v2, v1, 0x80

    const/16 v4, 0x80

    if-ne v2, v4, :cond_7

    or-int/lit16 v3, v3, 0x80

    .line 1558
    :cond_7
    iget-object v2, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->closeTransactionHash_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v2}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->access$2302(Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    and-int/lit16 v2, v1, 0x100

    const/16 v4, 0x100

    if-ne v2, v4, :cond_8

    or-int/lit16 v3, v3, 0x100

    .line 1562
    :cond_8
    iget v2, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->majorVersion_:I

    invoke-static {v0, v2}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->access$2402(Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;I)I

    and-int/lit16 v2, v1, 0x200

    const/16 v4, 0x200

    if-ne v2, v4, :cond_9

    or-int/lit16 v3, v3, 0x200

    .line 1566
    :cond_9
    iget-wide v4, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->expiryTime_:J

    invoke-static {v0, v4, v5}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->access$2502(Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;J)J

    const/16 v2, 0x400

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_a

    or-int/lit16 v3, v3, 0x400

    .line 1570
    :cond_a
    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->serverKey_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v1}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->access$2602(Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 1571
    invoke-static {v0, v3}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->access$2702(Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;I)I

    .line 1572
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1441
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->clear()Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 1441
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->clear()Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1441
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->clear()Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1441
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->clear()Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;
    .locals 4

    .line 1476
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1477
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->id_:Lcom/google/protobuf/ByteString;

    .line 1478
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    .line 1479
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->contractTransaction_:Lcom/google/protobuf/ByteString;

    .line 1480
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    .line 1481
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->refundTransaction_:Lcom/google/protobuf/ByteString;

    .line 1482
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    .line 1483
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->myPublicKey_:Lcom/google/protobuf/ByteString;

    .line 1484
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    .line 1485
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->myKey_:Lcom/google/protobuf/ByteString;

    .line 1486
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    const-wide/16 v1, 0x0

    .line 1487
    iput-wide v1, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->valueToMe_:J

    and-int/lit8 v0, v0, -0x21

    .line 1488
    iput v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    .line 1489
    iput-wide v1, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->refundFees_:J

    and-int/lit8 v0, v0, -0x41

    .line 1490
    iput v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    .line 1491
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->closeTransactionHash_:Lcom/google/protobuf/ByteString;

    .line 1492
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    const/4 v3, 0x1

    .line 1493
    iput v3, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->majorVersion_:I

    and-int/lit16 v0, v0, -0x101

    .line 1494
    iput v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    .line 1495
    iput-wide v1, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->expiryTime_:J

    and-int/lit16 v0, v0, -0x201

    .line 1496
    iput v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    .line 1497
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->serverKey_:Lcom/google/protobuf/ByteString;

    .line 1498
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearCloseTransactionHash()Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;
    .locals 1

    .line 1999
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    .line 2000
    invoke-static {}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->getDefaultInstance()Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->getCloseTransactionHash()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->closeTransactionHash_:Lcom/google/protobuf/ByteString;

    .line 2001
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->onChanged()V

    return-object p0
.end method

.method public clearContractTransaction()Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;
    .locals 1

    .line 1739
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    .line 1740
    invoke-static {}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->getDefaultInstance()Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->getContractTransaction()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->contractTransaction_:Lcom/google/protobuf/ByteString;

    .line 1741
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->onChanged()V

    return-object p0
.end method

.method public clearExpiryTime()Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;
    .locals 2

    .line 2079
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 2080
    iput-wide v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->expiryTime_:J

    .line 2081
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->onChanged()V

    return-object p0
.end method

.method public clearId()Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;
    .locals 1

    .line 1704
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    .line 1705
    invoke-static {}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->getDefaultInstance()Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->getId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->id_:Lcom/google/protobuf/ByteString;

    .line 1706
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMajorVersion()Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;
    .locals 1

    .line 2031
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    const/4 v0, 0x1

    .line 2032
    iput v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->majorVersion_:I

    .line 2033
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMyKey()Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;
    .locals 1

    .line 1860
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    .line 1861
    invoke-static {}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->getDefaultInstance()Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->getMyKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->myKey_:Lcom/google/protobuf/ByteString;

    .line 1862
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMyPublicKey()Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;
    .locals 1

    .line 1809
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    .line 1810
    invoke-static {}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->getDefaultInstance()Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->getMyPublicKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->myPublicKey_:Lcom/google/protobuf/ByteString;

    .line 1811
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->onChanged()V

    return-object p0
.end method

.method public clearRefundFees()Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;
    .locals 2

    .line 1940
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 1941
    iput-wide v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->refundFees_:J

    .line 1942
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->onChanged()V

    return-object p0
.end method

.method public clearRefundTransaction()Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;
    .locals 1

    .line 1774
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    .line 1775
    invoke-static {}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->getDefaultInstance()Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->getRefundTransaction()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->refundTransaction_:Lcom/google/protobuf/ByteString;

    .line 1776
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->onChanged()V

    return-object p0
.end method

.method public clearServerKey()Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;
    .locals 1

    .line 2130
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    .line 2131
    invoke-static {}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->getDefaultInstance()Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->getServerKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->serverKey_:Lcom/google/protobuf/ByteString;

    .line 2132
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->onChanged()V

    return-object p0
.end method

.method public clearValueToMe()Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;
    .locals 2

    .line 1892
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 1893
    iput-wide v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->valueToMe_:J

    .line 1894
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1441
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->clone()Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 1441
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->clone()Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 1441
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->clone()Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1441
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->clone()Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1441
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->clone()Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

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

    .line 1441
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->clone()Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;
    .locals 2

    .line 1503
    invoke-static {}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->create()Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->buildPartial()Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->mergeFrom(Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;)Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCloseTransactionHash()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1969
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->closeTransactionHash_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getContractTransaction()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1721
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->contractTransaction_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1441
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->getDefaultInstanceForType()Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1441
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->getDefaultInstanceForType()Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;
    .locals 1

    .line 1512
    invoke-static {}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->getDefaultInstance()Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1508
    invoke-static {}, Lorg/bitcoinj/protocols/channels/ClientState;->access$900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getExpiryTime()J
    .locals 2

    .line 2056
    iget-wide v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->expiryTime_:J

    return-wide v0
.end method

.method public getId()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1686
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->id_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getMajorVersion()I
    .locals 1

    .line 2016
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->majorVersion_:I

    return v0
.end method

.method public getMyKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1834
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->myKey_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getMyPublicKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1791
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->myPublicKey_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getRefundFees()J
    .locals 2

    .line 1917
    iget-wide v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->refundFees_:J

    return-wide v0
.end method

.method public getRefundTransaction()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1756
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->refundTransaction_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getServerKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2104
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->serverKey_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getValueToMe()J
    .locals 2

    .line 1877
    iget-wide v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->valueToMe_:J

    return-wide v0
.end method

.method public hasCloseTransactionHash()Z
    .locals 2

    .line 1957
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

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

.method public hasContractTransaction()Z
    .locals 2

    .line 1715
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

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

.method public hasExpiryTime()Z
    .locals 2

    .line 2046
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasId()Z
    .locals 2

    .line 1680
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasMajorVersion()Z
    .locals 2

    .line 2010
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    const/16 v1, 0x100

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

    .line 1824
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

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

.method public hasMyPublicKey()Z
    .locals 2

    .line 1785
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

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

.method public hasRefundFees()Z
    .locals 2

    .line 1907
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

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

.method public hasRefundTransaction()Z
    .locals 2

    .line 1750
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

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

.method public hasServerKey()Z
    .locals 2

    .line 2094
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    const/16 v1, 0x400

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasValueToMe()Z
    .locals 2

    .line 1871
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .line 1452
    invoke-static {}, Lorg/bitcoinj/protocols/channels/ClientState;->access$1000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;

    const-class v2, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    .line 1453
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1625
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->hasId()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1629
    :cond_0
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->hasContractTransaction()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 1633
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->hasRefundTransaction()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 1637
    :cond_2
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->hasMyPublicKey()Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 1641
    :cond_3
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->hasMyKey()Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    .line 1645
    :cond_4
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->hasValueToMe()Z

    move-result v0

    if-nez v0, :cond_5

    return v1

    .line 1649
    :cond_5
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->hasRefundFees()Z

    move-result v0

    if-nez v0, :cond_6

    return v1

    :cond_6
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

    .line 1441
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1441
    invoke-virtual {p0, p1}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

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

    .line 1441
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

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

    .line 1441
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1441
    invoke-virtual {p0, p1}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

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

    .line 1441
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1662
    :try_start_0
    sget-object v1, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 1668
    invoke-virtual {p0, p1}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->mergeFrom(Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;)Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1664
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1665
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 1668
    invoke-virtual {p0, v0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->mergeFrom(Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;)Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;
    .locals 1

    .line 1577
    instance-of v0, p1, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;

    if-eqz v0, :cond_0

    .line 1578
    check-cast p1, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;

    invoke-virtual {p0, p1}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->mergeFrom(Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;)Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    move-result-object p1

    return-object p1

    .line 1580
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;)Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;
    .locals 2

    .line 1586
    invoke-static {}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->getDefaultInstance()Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 1587
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->hasId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1588
    invoke-virtual {p1}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->getId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->setId(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    .line 1590
    :cond_1
    invoke-virtual {p1}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->hasContractTransaction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1591
    invoke-virtual {p1}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->getContractTransaction()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->setContractTransaction(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    .line 1593
    :cond_2
    invoke-virtual {p1}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->hasRefundTransaction()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1594
    invoke-virtual {p1}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->getRefundTransaction()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->setRefundTransaction(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    .line 1596
    :cond_3
    invoke-virtual {p1}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->hasMyPublicKey()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1597
    invoke-virtual {p1}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->getMyPublicKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->setMyPublicKey(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    .line 1599
    :cond_4
    invoke-virtual {p1}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->hasMyKey()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1600
    invoke-virtual {p1}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->getMyKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->setMyKey(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    .line 1602
    :cond_5
    invoke-virtual {p1}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->hasValueToMe()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1603
    invoke-virtual {p1}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->getValueToMe()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->setValueToMe(J)Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    .line 1605
    :cond_6
    invoke-virtual {p1}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->hasRefundFees()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1606
    invoke-virtual {p1}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->getRefundFees()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->setRefundFees(J)Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    .line 1608
    :cond_7
    invoke-virtual {p1}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->hasCloseTransactionHash()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1609
    invoke-virtual {p1}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->getCloseTransactionHash()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->setCloseTransactionHash(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    .line 1611
    :cond_8
    invoke-virtual {p1}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->hasMajorVersion()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1612
    invoke-virtual {p1}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->getMajorVersion()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->setMajorVersion(I)Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    .line 1614
    :cond_9
    invoke-virtual {p1}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->hasExpiryTime()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1615
    invoke-virtual {p1}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->getExpiryTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->setExpiryTime(J)Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    .line 1617
    :cond_a
    invoke-virtual {p1}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->hasServerKey()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1618
    invoke-virtual {p1}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->getServerKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->setServerKey(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    .line 1620
    :cond_b
    invoke-virtual {p1}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    return-object p0
.end method

.method public setCloseTransactionHash(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 1984
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    .line 1985
    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->closeTransactionHash_:Lcom/google/protobuf/ByteString;

    .line 1986
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 1982
    throw p1
.end method

.method public setContractTransaction(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 1730
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    .line 1731
    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->contractTransaction_:Lcom/google/protobuf/ByteString;

    .line 1732
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 1728
    throw p1
.end method

.method public setExpiryTime(J)Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;
    .locals 1

    .line 2066
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    .line 2067
    iput-wide p1, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->expiryTime_:J

    .line 2068
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->onChanged()V

    return-object p0
.end method

.method public setId(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 1695
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    .line 1696
    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->id_:Lcom/google/protobuf/ByteString;

    .line 1697
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 1693
    throw p1
.end method

.method public setMajorVersion(I)Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;
    .locals 1

    .line 2022
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    .line 2023
    iput p1, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->majorVersion_:I

    .line 2024
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->onChanged()V

    return-object p0
.end method

.method public setMyKey(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 1847
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    .line 1848
    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->myKey_:Lcom/google/protobuf/ByteString;

    .line 1849
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 1845
    throw p1
.end method

.method public setMyPublicKey(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 1800
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    .line 1801
    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->myPublicKey_:Lcom/google/protobuf/ByteString;

    .line 1802
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 1798
    throw p1
.end method

.method public setRefundFees(J)Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;
    .locals 1

    .line 1927
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    .line 1928
    iput-wide p1, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->refundFees_:J

    .line 1929
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->onChanged()V

    return-object p0
.end method

.method public setRefundTransaction(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 1765
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    .line 1766
    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->refundTransaction_:Lcom/google/protobuf/ByteString;

    .line 1767
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 1763
    throw p1
.end method

.method public setServerKey(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 2117
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    .line 2118
    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->serverKey_:Lcom/google/protobuf/ByteString;

    .line 2119
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 2115
    throw p1
.end method

.method public setValueToMe(J)Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;
    .locals 1

    .line 1883
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    .line 1884
    iput-wide p1, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->valueToMe_:J

    .line 1885
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->onChanged()V

    return-object p0
.end method
