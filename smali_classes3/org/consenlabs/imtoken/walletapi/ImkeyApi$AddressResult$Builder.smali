.class public final Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "ImkeyApi.java"

# interfaces
.implements Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResultOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;",
        ">;",
        "Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResultOrBuilder;"
    }
.end annotation


# instance fields
.field private address_:Ljava/lang/Object;

.field private chainType_:Ljava/lang/Object;

.field private path_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3388
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 3529
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->path_:Ljava/lang/Object;

    .line 3605
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->chainType_:Ljava/lang/Object;

    .line 3681
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->address_:Ljava/lang/Object;

    .line 3389
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 3394
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 3529
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->path_:Ljava/lang/Object;

    .line 3605
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->chainType_:Ljava/lang/Object;

    .line 3681
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->address_:Ljava/lang/Object;

    .line 3395
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V
    .locals 0

    .line 3370
    invoke-direct {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V
    .locals 0

    .line 3370
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 3376
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->access$5100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 3399
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->access$5500()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3370
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3370
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;
    .locals 0

    .line 3474
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 3370
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->build()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3370
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->build()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;
    .locals 2

    .line 3427
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->buildPartial()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;

    move-result-object v0

    .line 3428
    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3429
    :cond_0
    invoke-static {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 3370
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->buildPartial()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3370
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->buildPartial()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;
    .locals 2

    .line 3436
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V

    .line 3437
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->path_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->access$5702(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3438
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->chainType_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->access$5802(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3439
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->address_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->access$5902(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3440
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 3370
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->clear()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 3370
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->clear()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3370
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->clear()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3370
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->clear()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;
    .locals 1

    .line 3404
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    .line 3405
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->path_:Ljava/lang/Object;

    .line 3407
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->chainType_:Ljava/lang/Object;

    .line 3409
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->address_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearAddress()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;
    .locals 1

    .line 3736
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->getDefaultInstance()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;

    move-result-object v0

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->address_:Ljava/lang/Object;

    .line 3737
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->onChanged()V

    return-object p0
.end method

.method public clearChainType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;
    .locals 1

    .line 3660
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->getDefaultInstance()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;

    move-result-object v0

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->getChainType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->chainType_:Ljava/lang/Object;

    .line 3661
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3370
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3370
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;
    .locals 0

    .line 3457
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 3370
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3370
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3370
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;
    .locals 0

    .line 3462
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;

    return-object p1
.end method

.method public clearPath()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;
    .locals 1

    .line 3584
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->getDefaultInstance()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;

    move-result-object v0

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->path_:Ljava/lang/Object;

    .line 3585
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 3370
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->clone()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 3370
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->clone()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 3370
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->clone()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3370
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->clone()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3370
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->clone()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;

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

    .line 3370
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->clone()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;
    .locals 1

    .line 3446
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;

    return-object v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 2

    .line 3687
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->address_:Ljava/lang/Object;

    .line 3688
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3689
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3691
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3692
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->address_:Ljava/lang/Object;

    return-object v0

    .line 3695
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 3704
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->address_:Ljava/lang/Object;

    .line 3705
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3706
    check-cast v0, Ljava/lang/String;

    .line 3707
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3709
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->address_:Ljava/lang/Object;

    return-object v0

    .line 3712
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getChainType()Ljava/lang/String;
    .locals 2

    .line 3611
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->chainType_:Ljava/lang/Object;

    .line 3612
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3613
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3615
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3616
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->chainType_:Ljava/lang/Object;

    return-object v0

    .line 3619
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getChainTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 3628
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->chainType_:Ljava/lang/Object;

    .line 3629
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3630
    check-cast v0, Ljava/lang/String;

    .line 3631
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3633
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->chainType_:Ljava/lang/Object;

    return-object v0

    .line 3636
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 3370
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3370
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;
    .locals 1

    .line 3422
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->getDefaultInstance()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 3417
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->access$5100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 2

    .line 3535
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->path_:Ljava/lang/Object;

    .line 3536
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3537
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3539
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3540
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->path_:Ljava/lang/Object;

    return-object v0

    .line 3543
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPathBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 3552
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->path_:Ljava/lang/Object;

    .line 3553
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3554
    check-cast v0, Ljava/lang/String;

    .line 3555
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3557
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->path_:Ljava/lang/Object;

    return-object v0

    .line 3560
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 3382
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->access$5200()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;

    const-class v2, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;

    .line 3383
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

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

    .line 3370
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 3370
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;

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

    .line 3370
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;

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

    .line 3370
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3370
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;

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

    .line 3370
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3517
    :try_start_0
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->access$6100()Lcom/google/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 3523
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->mergeFrom(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3519
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3520
    :try_start_2
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 3523
    invoke-virtual {p0, v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->mergeFrom(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;

    .line 3525
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;
    .locals 1

    .line 3478
    instance-of v0, p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;

    if-eqz v0, :cond_0

    .line 3479
    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;

    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->mergeFrom(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;

    move-result-object p1

    return-object p1

    .line 3481
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;
    .locals 1

    .line 3487
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->getDefaultInstance()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 3488
    :cond_0
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3489
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->access$5700(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->path_:Ljava/lang/Object;

    .line 3490
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->onChanged()V

    .line 3492
    :cond_1
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->getChainType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3493
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->access$5800(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->chainType_:Ljava/lang/Object;

    .line 3494
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->onChanged()V

    .line 3496
    :cond_2
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3497
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->access$5900(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->address_:Ljava/lang/Object;

    .line 3498
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->onChanged()V

    .line 3500
    :cond_3
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->access$6000(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;

    .line 3501
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 3370
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3370
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3370
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;
    .locals 0

    .line 3765
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;

    return-object p1
.end method

.method public setAddress(Ljava/lang/String;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 3726
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->address_:Ljava/lang/Object;

    .line 3727
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 3723
    throw p1
.end method

.method public setAddressBytes(Lcom/google/protobuf/ByteString;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 3750
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->access$6400(Lcom/google/protobuf/ByteString;)V

    .line 3752
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->address_:Ljava/lang/Object;

    .line 3753
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 3748
    throw p1
.end method

.method public setChainType(Ljava/lang/String;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 3650
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->chainType_:Ljava/lang/Object;

    .line 3651
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 3647
    throw p1
.end method

.method public setChainTypeBytes(Lcom/google/protobuf/ByteString;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 3674
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->access$6300(Lcom/google/protobuf/ByteString;)V

    .line 3676
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->chainType_:Ljava/lang/Object;

    .line 3677
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 3672
    throw p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3370
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3370
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;
    .locals 0

    .line 3452
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;

    return-object p1
.end method

.method public setPath(Ljava/lang/String;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 3574
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->path_:Ljava/lang/Object;

    .line 3575
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 3571
    throw p1
.end method

.method public setPathBytes(Lcom/google/protobuf/ByteString;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 3598
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->access$6200(Lcom/google/protobuf/ByteString;)V

    .line 3600
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->path_:Ljava/lang/Object;

    .line 3601
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 3596
    throw p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3370
    invoke-virtual {p0, p1, p2, p3}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3370
    invoke-virtual {p0, p1, p2, p3}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;
    .locals 0

    .line 3468
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3370
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3370
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;
    .locals 0

    .line 3759
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;

    return-object p1
.end method
