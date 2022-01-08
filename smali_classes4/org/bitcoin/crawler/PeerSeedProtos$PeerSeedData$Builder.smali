.class public final Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "PeerSeedProtos.java"

# interfaces
.implements Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder<",
        "Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;",
        ">;",
        "Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedDataOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private ipAddress_:Ljava/lang/Object;

.field private port_:I

.field private services_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 385
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    const-string v0, ""

    .line 516
    iput-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->ipAddress_:Ljava/lang/Object;

    .line 386
    invoke-direct {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0

    .line 391
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    const-string p1, ""

    .line 516
    iput-object p1, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->ipAddress_:Ljava/lang/Object;

    .line 392
    invoke-direct {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoin/crawler/PeerSeedProtos$1;)V
    .locals 0

    .line 368
    invoke-direct {p0, p1}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$300()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;
    .locals 1

    .line 368
    invoke-static {}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->create()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;
    .locals 1

    .line 399
    new-instance v0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;

    invoke-direct {v0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 374
    invoke-static {}, Lorg/bitcoin/crawler/PeerSeedProtos;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 395
    invoke-static {}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->access$500()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 368
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->build()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 368
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->build()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;
    .locals 2

    .line 427
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->buildPartial()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;

    move-result-object v0

    .line 428
    invoke-virtual {v0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 429
    :cond_0
    invoke-static {v0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 368
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->buildPartial()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 368
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->buildPartial()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;
    .locals 5

    .line 435
    new-instance v0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoin/crawler/PeerSeedProtos$1;)V

    .line 436
    iget v1, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 441
    :goto_0
    iget-object v2, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->ipAddress_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->access$702(Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 445
    :cond_1
    iget v2, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->port_:I

    invoke-static {v0, v2}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->access$802(Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;I)I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 449
    :cond_2
    iget v1, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->services_:I

    invoke-static {v0, v1}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->access$902(Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;I)I

    .line 450
    invoke-static {v0, v3}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->access$1002(Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;I)I

    .line 451
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 368
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->clear()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 368
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->clear()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 368
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->clear()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 368
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->clear()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;
    .locals 2

    .line 403
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    const-string v0, ""

    .line 404
    iput-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->ipAddress_:Ljava/lang/Object;

    .line 405
    iget v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->bitField0_:I

    const/4 v1, 0x0

    .line 406
    iput v1, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->port_:I

    and-int/lit8 v0, v0, -0x3

    .line 407
    iput v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->bitField0_:I

    .line 408
    iput v1, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->services_:I

    and-int/lit8 v0, v0, -0x5

    .line 409
    iput v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearIpAddress()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;
    .locals 1

    .line 573
    iget v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->bitField0_:I

    .line 574
    invoke-static {}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->getDefaultInstance()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->getIpAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->ipAddress_:Ljava/lang/Object;

    .line 575
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->onChanged()V

    return-object p0
.end method

.method public clearPort()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;
    .locals 1

    .line 618
    iget v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 619
    iput v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->port_:I

    .line 620
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->onChanged()V

    return-object p0
.end method

.method public clearServices()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;
    .locals 1

    .line 650
    iget v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 651
    iput v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->services_:I

    .line 652
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 368
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->clone()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 368
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->clone()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 368
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->clone()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 368
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->clone()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 368
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->clone()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;

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

    .line 368
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->clone()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;
    .locals 2

    .line 414
    invoke-static {}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->create()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->buildPartial()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->mergeFrom(Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;)Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 368
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->getDefaultInstanceForType()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 368
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->getDefaultInstanceForType()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;
    .locals 1

    .line 423
    invoke-static {}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->getDefaultInstance()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 419
    invoke-static {}, Lorg/bitcoin/crawler/PeerSeedProtos;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getIpAddress()Ljava/lang/String;
    .locals 2

    .line 527
    iget-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->ipAddress_:Ljava/lang/Object;

    .line 528
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 529
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 531
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 532
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 533
    iput-object v1, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->ipAddress_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 537
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIpAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 545
    iget-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->ipAddress_:Ljava/lang/Object;

    .line 546
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 547
    check-cast v0, Ljava/lang/String;

    .line 548
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 550
    iput-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->ipAddress_:Ljava/lang/Object;

    return-object v0

    .line 553
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 603
    iget v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->port_:I

    return v0
.end method

.method public getServices()I
    .locals 1

    .line 635
    iget v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->services_:I

    return v0
.end method

.method public hasIpAddress()Z
    .locals 2

    .line 521
    iget v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->bitField0_:I

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

    .line 597
    iget v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->bitField0_:I

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

    .line 629
    iget v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->bitField0_:I

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

    .line 379
    invoke-static {}, Lorg/bitcoin/crawler/PeerSeedProtos;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;

    const-class v2, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;

    .line 380
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 482
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->hasIpAddress()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 486
    :cond_0
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->hasPort()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 490
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->hasServices()Z

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

    .line 368
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 368
    invoke-virtual {p0, p1}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;

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

    .line 368
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;

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

    .line 368
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 368
    invoke-virtual {p0, p1}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;

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

    .line 368
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 503
    :try_start_0
    sget-object v1, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 509
    invoke-virtual {p0, p1}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->mergeFrom(Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;)Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 505
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 506
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 509
    invoke-virtual {p0, v0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->mergeFrom(Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;)Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;
    .locals 1

    .line 456
    instance-of v0, p1, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;

    if-eqz v0, :cond_0

    .line 457
    check-cast p1, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;

    invoke-virtual {p0, p1}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->mergeFrom(Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;)Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;

    move-result-object p1

    return-object p1

    .line 459
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;)Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;
    .locals 1

    .line 465
    invoke-static {}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->getDefaultInstance()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 466
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->hasIpAddress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 467
    iget v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->bitField0_:I

    .line 468
    invoke-static {p1}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->access$700(Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->ipAddress_:Ljava/lang/Object;

    .line 469
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->onChanged()V

    .line 471
    :cond_1
    invoke-virtual {p1}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->hasPort()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 472
    invoke-virtual {p1}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->getPort()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->setPort(I)Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;

    .line 474
    :cond_2
    invoke-virtual {p1}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->hasServices()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 475
    invoke-virtual {p1}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->getServices()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->setServices(I)Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;

    .line 477
    :cond_3
    invoke-virtual {p1}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    return-object p0
.end method

.method public setIpAddress(Ljava/lang/String;)Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 564
    iget v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->bitField0_:I

    .line 565
    iput-object p1, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->ipAddress_:Ljava/lang/Object;

    .line 566
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 562
    throw p1
.end method

.method public setIpAddressBytes(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 586
    iget v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->bitField0_:I

    .line 587
    iput-object p1, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->ipAddress_:Ljava/lang/Object;

    .line 588
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 584
    throw p1
.end method

.method public setPort(I)Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;
    .locals 1

    .line 609
    iget v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->bitField0_:I

    .line 610
    iput p1, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->port_:I

    .line 611
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->onChanged()V

    return-object p0
.end method

.method public setServices(I)Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;
    .locals 1

    .line 641
    iget v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->bitField0_:I

    .line 642
    iput p1, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->services_:I

    .line 643
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->onChanged()V

    return-object p0
.end method
