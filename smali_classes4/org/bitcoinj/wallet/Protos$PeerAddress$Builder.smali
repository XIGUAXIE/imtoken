.class public final Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoinj/wallet/Protos$PeerAddressOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/wallet/Protos$PeerAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder<",
        "Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;",
        ">;",
        "Lorg/bitcoinj/wallet/Protos$PeerAddressOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private ipAddress_:Lcom/google/protobuf/ByteString;

.field private port_:I

.field private services_:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 352
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 481
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->ipAddress_:Lcom/google/protobuf/ByteString;

    .line 353
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0

    .line 358
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 481
    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->ipAddress_:Lcom/google/protobuf/ByteString;

    .line 359
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoinj/wallet/Protos$1;)V
    .locals 0

    .line 335
    invoke-direct {p0, p1}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$300()Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;
    .locals 1

    .line 335
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->create()Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;
    .locals 1

    .line 366
    new-instance v0, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 341
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 362
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->access$500()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 335
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->build()Lorg/bitcoinj/wallet/Protos$PeerAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 335
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->build()Lorg/bitcoinj/wallet/Protos$PeerAddress;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/bitcoinj/wallet/Protos$PeerAddress;
    .locals 2

    .line 394
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$PeerAddress;

    move-result-object v0

    .line 395
    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 396
    :cond_0
    invoke-static {v0}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 335
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$PeerAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 335
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$PeerAddress;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lorg/bitcoinj/wallet/Protos$PeerAddress;
    .locals 5

    .line 402
    new-instance v0, Lorg/bitcoinj/wallet/Protos$PeerAddress;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bitcoinj/wallet/Protos$PeerAddress;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoinj/wallet/Protos$1;)V

    .line 403
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 408
    :goto_0
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->ipAddress_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v2}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->access$702(Lorg/bitcoinj/wallet/Protos$PeerAddress;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 412
    :cond_1
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->port_:I

    invoke-static {v0, v2}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->access$802(Lorg/bitcoinj/wallet/Protos$PeerAddress;I)I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 416
    :cond_2
    iget-wide v1, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->services_:J

    invoke-static {v0, v1, v2}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->access$902(Lorg/bitcoinj/wallet/Protos$PeerAddress;J)J

    .line 417
    invoke-static {v0, v3}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->access$1002(Lorg/bitcoinj/wallet/Protos$PeerAddress;I)I

    .line 418
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 335
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->clear()Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 335
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->clear()Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 335
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->clear()Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 335
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->clear()Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;
    .locals 3

    .line 370
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 371
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->ipAddress_:Lcom/google/protobuf/ByteString;

    .line 372
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->bitField0_:I

    const/4 v1, 0x0

    .line 373
    iput v1, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->port_:I

    and-int/lit8 v0, v0, -0x3

    .line 374
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->bitField0_:I

    const-wide/16 v1, 0x0

    .line 375
    iput-wide v1, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->services_:J

    and-int/lit8 v0, v0, -0x5

    .line 376
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearIpAddress()Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;
    .locals 1

    .line 510
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->bitField0_:I

    .line 511
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$PeerAddress;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->getIpAddress()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->ipAddress_:Lcom/google/protobuf/ByteString;

    .line 512
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->onChanged()V

    return-object p0
.end method

.method public clearPort()Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;
    .locals 1

    .line 542
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 543
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->port_:I

    .line 544
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->onChanged()V

    return-object p0
.end method

.method public clearServices()Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;
    .locals 2

    .line 574
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 575
    iput-wide v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->services_:J

    .line 576
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 335
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->clone()Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 335
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->clone()Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 335
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->clone()Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 335
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->clone()Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 335
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->clone()Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

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

    .line 335
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->clone()Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;
    .locals 2

    .line 381
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->create()Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$PeerAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$PeerAddress;)Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 335
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$PeerAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 335
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$PeerAddress;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$PeerAddress;
    .locals 1

    .line 390
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$PeerAddress;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 386
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getIpAddress()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 492
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->ipAddress_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 527
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->port_:I

    return v0
.end method

.method public getServices()J
    .locals 2

    .line 559
    iget-wide v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->services_:J

    return-wide v0
.end method

.method public hasIpAddress()Z
    .locals 2

    .line 486
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasPort()Z
    .locals 2

    .line 521
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->bitField0_:I

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

.method public hasServices()Z
    .locals 2

    .line 553
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->bitField0_:I

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

    .line 346
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoinj/wallet/Protos$PeerAddress;

    const-class v2, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

    .line 347
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 447
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->hasIpAddress()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 451
    :cond_0
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->hasPort()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 455
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->hasServices()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
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

    .line 335
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 335
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

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

    .line 335
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

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

    .line 335
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 335
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

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

    .line 335
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 468
    :try_start_0
    sget-object v1, Lorg/bitcoinj/wallet/Protos$PeerAddress;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/Protos$PeerAddress;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 474
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$PeerAddress;)Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 470
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lorg/bitcoinj/wallet/Protos$PeerAddress;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 471
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 474
    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$PeerAddress;)Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;
    .locals 1

    .line 423
    instance-of v0, p1, Lorg/bitcoinj/wallet/Protos$PeerAddress;

    if-eqz v0, :cond_0

    .line 424
    check-cast p1, Lorg/bitcoinj/wallet/Protos$PeerAddress;

    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$PeerAddress;)Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

    move-result-object p1

    return-object p1

    .line 426
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lorg/bitcoinj/wallet/Protos$PeerAddress;)Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;
    .locals 2

    .line 432
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$PeerAddress;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 433
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->hasIpAddress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 434
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->getIpAddress()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->setIpAddress(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

    .line 436
    :cond_1
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->hasPort()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 437
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->getPort()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->setPort(I)Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

    .line 439
    :cond_2
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->hasServices()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 440
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->getServices()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->setServices(J)Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

    .line 442
    :cond_3
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    return-object p0
.end method

.method public setIpAddress(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 501
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->bitField0_:I

    .line 502
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->ipAddress_:Lcom/google/protobuf/ByteString;

    .line 503
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 499
    throw p1
.end method

.method public setPort(I)Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;
    .locals 1

    .line 533
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->bitField0_:I

    .line 534
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->port_:I

    .line 535
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->onChanged()V

    return-object p0
.end method

.method public setServices(J)Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;
    .locals 1

    .line 565
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->bitField0_:I

    .line 566
    iput-wide p1, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->services_:J

    .line 567
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->onChanged()V

    return-object p0
.end method
