.class public final Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "ImkeyApi.java"

# interfaces
.implements Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParamOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;",
        ">;",
        "Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParamOrBuilder;"
    }
.end annotation


# instance fields
.field private chainType_:Ljava/lang/Object;

.field private externalIdx_:I

.field private network_:Ljava/lang/Object;

.field private path_:Ljava/lang/Object;

.field private segWit_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 10385
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 10539
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->path_:Ljava/lang/Object;

    .line 10615
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->chainType_:Ljava/lang/Object;

    .line 10691
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->network_:Ljava/lang/Object;

    .line 10767
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->segWit_:Ljava/lang/Object;

    .line 10386
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 10391
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 10539
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->path_:Ljava/lang/Object;

    .line 10615
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->chainType_:Ljava/lang/Object;

    .line 10691
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->network_:Ljava/lang/Object;

    .line 10767
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->segWit_:Ljava/lang/Object;

    .line 10392
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V
    .locals 0

    .line 10367
    invoke-direct {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V
    .locals 0

    .line 10367
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 10373
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->access$16300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 10396
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->access$16700()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 10367
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 10367
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;
    .locals 0

    .line 10477
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 10367
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->build()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 10367
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->build()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;
    .locals 2

    .line 10428
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->buildPartial()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;

    move-result-object v0

    .line 10429
    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 10430
    :cond_0
    invoke-static {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 10367
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->buildPartial()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 10367
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->buildPartial()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;
    .locals 2

    .line 10437
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V

    .line 10438
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->path_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->access$16902(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10439
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->chainType_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->access$17002(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10440
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->network_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->access$17102(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10441
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->segWit_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->access$17202(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10442
    iget v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->externalIdx_:I

    invoke-static {v0, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->access$17302(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;I)I

    .line 10443
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 10367
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->clear()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 10367
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->clear()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 10367
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->clear()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 10367
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->clear()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;
    .locals 1

    .line 10401
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    .line 10402
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->path_:Ljava/lang/Object;

    .line 10404
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->chainType_:Ljava/lang/Object;

    .line 10406
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->network_:Ljava/lang/Object;

    .line 10408
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->segWit_:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 10410
    iput v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->externalIdx_:I

    return-object p0
.end method

.method public clearChainType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;
    .locals 1

    .line 10670
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->getDefaultInstance()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;

    move-result-object v0

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->getChainType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->chainType_:Ljava/lang/Object;

    .line 10671
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->onChanged()V

    return-object p0
.end method

.method public clearExternalIdx()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 10868
    iput v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->externalIdx_:I

    .line 10869
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 10367
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 10367
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;
    .locals 0

    .line 10460
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;

    return-object p1
.end method

.method public clearNetwork()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;
    .locals 1

    .line 10746
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->getDefaultInstance()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;

    move-result-object v0

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->getNetwork()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->network_:Ljava/lang/Object;

    .line 10747
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 10367
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 10367
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 10367
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;
    .locals 0

    .line 10465
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;

    return-object p1
.end method

.method public clearPath()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;
    .locals 1

    .line 10594
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->getDefaultInstance()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;

    move-result-object v0

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->path_:Ljava/lang/Object;

    .line 10595
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSegWit()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;
    .locals 1

    .line 10822
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->getDefaultInstance()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;

    move-result-object v0

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->getSegWit()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->segWit_:Ljava/lang/Object;

    .line 10823
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 10367
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->clone()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 10367
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->clone()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 10367
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->clone()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 10367
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->clone()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 10367
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->clone()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;

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

    .line 10367
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->clone()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;
    .locals 1

    .line 10449
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;

    return-object v0
.end method

.method public getChainType()Ljava/lang/String;
    .locals 2

    .line 10621
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->chainType_:Ljava/lang/Object;

    .line 10622
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 10623
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 10625
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 10626
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->chainType_:Ljava/lang/Object;

    return-object v0

    .line 10629
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getChainTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 10638
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->chainType_:Ljava/lang/Object;

    .line 10639
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 10640
    check-cast v0, Ljava/lang/String;

    .line 10641
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 10643
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->chainType_:Ljava/lang/Object;

    return-object v0

    .line 10646
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 10367
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 10367
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;
    .locals 1

    .line 10423
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->getDefaultInstance()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 10418
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->access$16300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getExternalIdx()I
    .locals 1

    .line 10849
    iget v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->externalIdx_:I

    return v0
.end method

.method public getNetwork()Ljava/lang/String;
    .locals 2

    .line 10697
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->network_:Ljava/lang/Object;

    .line 10698
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 10699
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 10701
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 10702
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->network_:Ljava/lang/Object;

    return-object v0

    .line 10705
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 10714
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->network_:Ljava/lang/Object;

    .line 10715
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 10716
    check-cast v0, Ljava/lang/String;

    .line 10717
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 10719
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->network_:Ljava/lang/Object;

    return-object v0

    .line 10722
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 2

    .line 10545
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->path_:Ljava/lang/Object;

    .line 10546
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 10547
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 10549
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 10550
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->path_:Ljava/lang/Object;

    return-object v0

    .line 10553
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPathBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 10562
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->path_:Ljava/lang/Object;

    .line 10563
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 10564
    check-cast v0, Ljava/lang/String;

    .line 10565
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 10567
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->path_:Ljava/lang/Object;

    return-object v0

    .line 10570
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSegWit()Ljava/lang/String;
    .locals 2

    .line 10773
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->segWit_:Ljava/lang/Object;

    .line 10774
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 10775
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 10777
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 10778
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->segWit_:Ljava/lang/Object;

    return-object v0

    .line 10781
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSegWitBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 10790
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->segWit_:Ljava/lang/Object;

    .line 10791
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 10792
    check-cast v0, Ljava/lang/String;

    .line 10793
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 10795
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->segWit_:Ljava/lang/Object;

    return-object v0

    .line 10798
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 10379
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->access$16400()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;

    const-class v2, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;

    .line 10380
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

    .line 10367
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 10367
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;

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

    .line 10367
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;

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

    .line 10367
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 10367
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;

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

    .line 10367
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 10527
    :try_start_0
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->access$17500()Lcom/google/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 10533
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->mergeFrom(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10529
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10530
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

    .line 10533
    invoke-virtual {p0, v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->mergeFrom(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;

    .line 10535
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;
    .locals 1

    .line 10481
    instance-of v0, p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;

    if-eqz v0, :cond_0

    .line 10482
    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;

    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->mergeFrom(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;

    move-result-object p1

    return-object p1

    .line 10484
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;
    .locals 1

    .line 10490
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->getDefaultInstance()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 10491
    :cond_0
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 10492
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->access$16900(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->path_:Ljava/lang/Object;

    .line 10493
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->onChanged()V

    .line 10495
    :cond_1
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->getChainType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 10496
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->access$17000(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->chainType_:Ljava/lang/Object;

    .line 10497
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->onChanged()V

    .line 10499
    :cond_2
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->getNetwork()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 10500
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->access$17100(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->network_:Ljava/lang/Object;

    .line 10501
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->onChanged()V

    .line 10503
    :cond_3
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->getSegWit()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 10504
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->access$17200(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->segWit_:Ljava/lang/Object;

    .line 10505
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->onChanged()V

    .line 10507
    :cond_4
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->getExternalIdx()I

    move-result v0

    if-eqz v0, :cond_5

    .line 10508
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->getExternalIdx()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->setExternalIdx(I)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;

    .line 10510
    :cond_5
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->access$17400(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;

    .line 10511
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 10367
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 10367
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 10367
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;
    .locals 0

    .line 10881
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;

    return-object p1
.end method

.method public setChainType(Ljava/lang/String;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 10660
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->chainType_:Ljava/lang/Object;

    .line 10661
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 10657
    throw p1
.end method

.method public setChainTypeBytes(Lcom/google/protobuf/ByteString;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 10684
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->access$17700(Lcom/google/protobuf/ByteString;)V

    .line 10686
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->chainType_:Ljava/lang/Object;

    .line 10687
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 10682
    throw p1
.end method

.method public setExternalIdx(I)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;
    .locals 0

    .line 10858
    iput p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->externalIdx_:I

    .line 10859
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 10367
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 10367
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;
    .locals 0

    .line 10455
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;

    return-object p1
.end method

.method public setNetwork(Ljava/lang/String;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 10736
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->network_:Ljava/lang/Object;

    .line 10737
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 10733
    throw p1
.end method

.method public setNetworkBytes(Lcom/google/protobuf/ByteString;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 10760
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->access$17800(Lcom/google/protobuf/ByteString;)V

    .line 10762
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->network_:Ljava/lang/Object;

    .line 10763
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 10758
    throw p1
.end method

.method public setPath(Ljava/lang/String;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 10584
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->path_:Ljava/lang/Object;

    .line 10585
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 10581
    throw p1
.end method

.method public setPathBytes(Lcom/google/protobuf/ByteString;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 10608
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->access$17600(Lcom/google/protobuf/ByteString;)V

    .line 10610
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->path_:Ljava/lang/Object;

    .line 10611
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 10606
    throw p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 10367
    invoke-virtual {p0, p1, p2, p3}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 10367
    invoke-virtual {p0, p1, p2, p3}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;
    .locals 0

    .line 10471
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;

    return-object p1
.end method

.method public setSegWit(Ljava/lang/String;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 10812
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->segWit_:Ljava/lang/Object;

    .line 10813
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 10809
    throw p1
.end method

.method public setSegWitBytes(Lcom/google/protobuf/ByteString;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 10836
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->access$17900(Lcom/google/protobuf/ByteString;)V

    .line 10838
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->segWit_:Ljava/lang/Object;

    .line 10839
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 10834
    throw p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 10367
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 10367
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;
    .locals 0

    .line 10875
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;

    return-object p1
.end method
