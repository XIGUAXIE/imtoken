.class public final Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "ImkeyApi.java"

# interfaces
.implements Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParamOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;",
        ">;",
        "Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParamOrBuilder;"
    }
.end annotation


# instance fields
.field private chainType_:Ljava/lang/Object;

.field private isSegWit_:Z

.field private network_:Ljava/lang/Object;

.field private path_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2490
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 2637
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->chainType_:Ljava/lang/Object;

    .line 2713
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->path_:Ljava/lang/Object;

    .line 2789
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->network_:Ljava/lang/Object;

    .line 2491
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 2496
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 2637
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->chainType_:Ljava/lang/Object;

    .line 2713
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->path_:Ljava/lang/Object;

    .line 2789
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->network_:Ljava/lang/Object;

    .line 2497
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V
    .locals 0

    .line 2472
    invoke-direct {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V
    .locals 0

    .line 2472
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 2478
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->access$3500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 2501
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->access$3900()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2472
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2472
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;
    .locals 0

    .line 2579
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 2472
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->build()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2472
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->build()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;
    .locals 2

    .line 2531
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->buildPartial()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;

    move-result-object v0

    .line 2532
    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 2533
    :cond_0
    invoke-static {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 2472
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->buildPartial()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2472
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->buildPartial()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;
    .locals 2

    .line 2540
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V

    .line 2541
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->chainType_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->access$4102(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2542
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->path_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->access$4202(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2543
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->network_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->access$4302(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2544
    iget-boolean v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->isSegWit_:Z

    invoke-static {v0, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->access$4402(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;Z)Z

    .line 2545
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 2472
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->clear()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 2472
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->clear()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 2472
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->clear()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2472
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->clear()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;
    .locals 1

    .line 2506
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    .line 2507
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->chainType_:Ljava/lang/Object;

    .line 2509
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->path_:Ljava/lang/Object;

    .line 2511
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->network_:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2513
    iput-boolean v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->isSegWit_:Z

    return-object p0
.end method

.method public clearChainType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;
    .locals 1

    .line 2692
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->getDefaultInstance()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;

    move-result-object v0

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->getChainType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->chainType_:Ljava/lang/Object;

    .line 2693
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2472
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2472
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;
    .locals 0

    .line 2562
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;

    return-object p1
.end method

.method public clearIsSegWit()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 2890
    iput-boolean v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->isSegWit_:Z

    .line 2891
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->onChanged()V

    return-object p0
.end method

.method public clearNetwork()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;
    .locals 1

    .line 2844
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->getDefaultInstance()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;

    move-result-object v0

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->getNetwork()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->network_:Ljava/lang/Object;

    .line 2845
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2472
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2472
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2472
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;
    .locals 0

    .line 2567
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;

    return-object p1
.end method

.method public clearPath()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;
    .locals 1

    .line 2768
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->getDefaultInstance()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;

    move-result-object v0

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->path_:Ljava/lang/Object;

    .line 2769
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 2472
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->clone()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 2472
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->clone()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 2472
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->clone()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 2472
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->clone()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2472
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->clone()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;

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

    .line 2472
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->clone()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;
    .locals 1

    .line 2551
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;

    return-object v0
.end method

.method public getChainType()Ljava/lang/String;
    .locals 2

    .line 2643
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->chainType_:Ljava/lang/Object;

    .line 2644
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2645
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2647
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2648
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->chainType_:Ljava/lang/Object;

    return-object v0

    .line 2651
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getChainTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 2660
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->chainType_:Ljava/lang/Object;

    .line 2661
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2662
    check-cast v0, Ljava/lang/String;

    .line 2663
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2665
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->chainType_:Ljava/lang/Object;

    return-object v0

    .line 2668
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 2472
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2472
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;
    .locals 1

    .line 2526
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->getDefaultInstance()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 2521
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->access$3500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getIsSegWit()Z
    .locals 1

    .line 2871
    iget-boolean v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->isSegWit_:Z

    return v0
.end method

.method public getNetwork()Ljava/lang/String;
    .locals 2

    .line 2795
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->network_:Ljava/lang/Object;

    .line 2796
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2797
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2799
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2800
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->network_:Ljava/lang/Object;

    return-object v0

    .line 2803
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 2812
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->network_:Ljava/lang/Object;

    .line 2813
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2814
    check-cast v0, Ljava/lang/String;

    .line 2815
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2817
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->network_:Ljava/lang/Object;

    return-object v0

    .line 2820
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 2

    .line 2719
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->path_:Ljava/lang/Object;

    .line 2720
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2721
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2723
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2724
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->path_:Ljava/lang/Object;

    return-object v0

    .line 2727
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPathBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 2736
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->path_:Ljava/lang/Object;

    .line 2737
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2738
    check-cast v0, Ljava/lang/String;

    .line 2739
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2741
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->path_:Ljava/lang/Object;

    return-object v0

    .line 2744
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 2484
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->access$3600()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;

    const-class v2, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;

    .line 2485
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

    .line 2472
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2472
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;

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

    .line 2472
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;

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

    .line 2472
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2472
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;

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

    .line 2472
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2625
    :try_start_0
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->access$4600()Lcom/google/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2631
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->mergeFrom(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2627
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2628
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

    .line 2631
    invoke-virtual {p0, v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->mergeFrom(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;

    .line 2633
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;
    .locals 1

    .line 2583
    instance-of v0, p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;

    if-eqz v0, :cond_0

    .line 2584
    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;

    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->mergeFrom(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;

    move-result-object p1

    return-object p1

    .line 2586
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;
    .locals 1

    .line 2592
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->getDefaultInstance()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2593
    :cond_0
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->getChainType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2594
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->access$4100(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->chainType_:Ljava/lang/Object;

    .line 2595
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->onChanged()V

    .line 2597
    :cond_1
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2598
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->access$4200(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->path_:Ljava/lang/Object;

    .line 2599
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->onChanged()V

    .line 2601
    :cond_2
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->getNetwork()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2602
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->access$4300(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->network_:Ljava/lang/Object;

    .line 2603
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->onChanged()V

    .line 2605
    :cond_3
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->getIsSegWit()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2606
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->getIsSegWit()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->setIsSegWit(Z)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;

    .line 2608
    :cond_4
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->access$4500(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;

    .line 2609
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2472
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2472
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2472
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;
    .locals 0

    .line 2903
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;

    return-object p1
.end method

.method public setChainType(Ljava/lang/String;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 2682
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->chainType_:Ljava/lang/Object;

    .line 2683
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 2679
    throw p1
.end method

.method public setChainTypeBytes(Lcom/google/protobuf/ByteString;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 2706
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->access$4700(Lcom/google/protobuf/ByteString;)V

    .line 2708
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->chainType_:Ljava/lang/Object;

    .line 2709
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 2704
    throw p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2472
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2472
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;
    .locals 0

    .line 2557
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;

    return-object p1
.end method

.method public setIsSegWit(Z)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;
    .locals 0

    .line 2880
    iput-boolean p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->isSegWit_:Z

    .line 2881
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->onChanged()V

    return-object p0
.end method

.method public setNetwork(Ljava/lang/String;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 2834
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->network_:Ljava/lang/Object;

    .line 2835
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 2831
    throw p1
.end method

.method public setNetworkBytes(Lcom/google/protobuf/ByteString;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 2858
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->access$4900(Lcom/google/protobuf/ByteString;)V

    .line 2860
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->network_:Ljava/lang/Object;

    .line 2861
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 2856
    throw p1
.end method

.method public setPath(Ljava/lang/String;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 2758
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->path_:Ljava/lang/Object;

    .line 2759
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 2755
    throw p1
.end method

.method public setPathBytes(Lcom/google/protobuf/ByteString;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 2782
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->access$4800(Lcom/google/protobuf/ByteString;)V

    .line 2784
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->path_:Ljava/lang/Object;

    .line 2785
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 2780
    throw p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2472
    invoke-virtual {p0, p1, p2, p3}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2472
    invoke-virtual {p0, p1, p2, p3}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;
    .locals 0

    .line 2573
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2472
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2472
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;
    .locals 0

    .line 2897
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;

    return-object p1
.end method
