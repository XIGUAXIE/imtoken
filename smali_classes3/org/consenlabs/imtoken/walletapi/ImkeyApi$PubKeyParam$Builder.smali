.class public final Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "ImkeyApi.java"

# interfaces
.implements Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParamOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;",
        ">;",
        "Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParamOrBuilder;"
    }
.end annotation


# instance fields
.field private chainType_:Ljava/lang/Object;

.field private isSegWit_:Ljava/lang/Object;

.field private network_:Ljava/lang/Object;

.field private path_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 4315
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 4463
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->chainType_:Ljava/lang/Object;

    .line 4539
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->path_:Ljava/lang/Object;

    .line 4615
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->network_:Ljava/lang/Object;

    .line 4691
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->isSegWit_:Ljava/lang/Object;

    .line 4316
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 4321
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 4463
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->chainType_:Ljava/lang/Object;

    .line 4539
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->path_:Ljava/lang/Object;

    .line 4615
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->network_:Ljava/lang/Object;

    .line 4691
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->isSegWit_:Ljava/lang/Object;

    .line 4322
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V
    .locals 0

    .line 4297
    invoke-direct {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V
    .locals 0

    .line 4297
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 4303
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->access$6600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 4326
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->access$7000()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 4297
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4297
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;
    .locals 0

    .line 4404
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 4297
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->build()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 4297
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->build()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;
    .locals 2

    .line 4356
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->buildPartial()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;

    move-result-object v0

    .line 4357
    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 4358
    :cond_0
    invoke-static {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 4297
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->buildPartial()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 4297
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->buildPartial()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;
    .locals 2

    .line 4365
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V

    .line 4366
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->chainType_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->access$7202(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4367
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->path_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->access$7302(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4368
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->network_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->access$7402(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4369
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->isSegWit_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->access$7502(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4370
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 4297
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->clear()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 4297
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->clear()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4297
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->clear()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4297
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->clear()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;
    .locals 1

    .line 4331
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    .line 4332
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->chainType_:Ljava/lang/Object;

    .line 4334
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->path_:Ljava/lang/Object;

    .line 4336
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->network_:Ljava/lang/Object;

    .line 4338
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->isSegWit_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearChainType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;
    .locals 1

    .line 4518
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->getDefaultInstance()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;

    move-result-object v0

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->getChainType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->chainType_:Ljava/lang/Object;

    .line 4519
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 4297
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4297
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;
    .locals 0

    .line 4387
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;

    return-object p1
.end method

.method public clearIsSegWit()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;
    .locals 1

    .line 4746
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->getDefaultInstance()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;

    move-result-object v0

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->getIsSegWit()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->isSegWit_:Ljava/lang/Object;

    .line 4747
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->onChanged()V

    return-object p0
.end method

.method public clearNetwork()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;
    .locals 1

    .line 4670
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->getDefaultInstance()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;

    move-result-object v0

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->getNetwork()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->network_:Ljava/lang/Object;

    .line 4671
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 4297
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 4297
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4297
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;
    .locals 0

    .line 4392
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;

    return-object p1
.end method

.method public clearPath()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;
    .locals 1

    .line 4594
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->getDefaultInstance()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;

    move-result-object v0

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->path_:Ljava/lang/Object;

    .line 4595
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 4297
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->clone()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 4297
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->clone()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 4297
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->clone()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4297
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->clone()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4297
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->clone()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;

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

    .line 4297
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->clone()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;
    .locals 1

    .line 4376
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;

    return-object v0
.end method

.method public getChainType()Ljava/lang/String;
    .locals 2

    .line 4469
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->chainType_:Ljava/lang/Object;

    .line 4470
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 4471
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4473
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 4474
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->chainType_:Ljava/lang/Object;

    return-object v0

    .line 4477
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getChainTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 4486
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->chainType_:Ljava/lang/Object;

    .line 4487
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4488
    check-cast v0, Ljava/lang/String;

    .line 4489
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4491
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->chainType_:Ljava/lang/Object;

    return-object v0

    .line 4494
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 4297
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 4297
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;
    .locals 1

    .line 4351
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->getDefaultInstance()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 4346
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->access$6600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getIsSegWit()Ljava/lang/String;
    .locals 2

    .line 4697
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->isSegWit_:Ljava/lang/Object;

    .line 4698
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 4699
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4701
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 4702
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->isSegWit_:Ljava/lang/Object;

    return-object v0

    .line 4705
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIsSegWitBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 4714
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->isSegWit_:Ljava/lang/Object;

    .line 4715
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4716
    check-cast v0, Ljava/lang/String;

    .line 4717
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4719
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->isSegWit_:Ljava/lang/Object;

    return-object v0

    .line 4722
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getNetwork()Ljava/lang/String;
    .locals 2

    .line 4621
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->network_:Ljava/lang/Object;

    .line 4622
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 4623
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4625
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 4626
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->network_:Ljava/lang/Object;

    return-object v0

    .line 4629
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 4638
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->network_:Ljava/lang/Object;

    .line 4639
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4640
    check-cast v0, Ljava/lang/String;

    .line 4641
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4643
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->network_:Ljava/lang/Object;

    return-object v0

    .line 4646
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 2

    .line 4545
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->path_:Ljava/lang/Object;

    .line 4546
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 4547
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4549
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 4550
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->path_:Ljava/lang/Object;

    return-object v0

    .line 4553
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPathBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 4562
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->path_:Ljava/lang/Object;

    .line 4563
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4564
    check-cast v0, Ljava/lang/String;

    .line 4565
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4567
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->path_:Ljava/lang/Object;

    return-object v0

    .line 4570
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 4309
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->access$6700()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;

    const-class v2, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;

    .line 4310
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

    .line 4297
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 4297
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;

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

    .line 4297
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;

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

    .line 4297
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4297
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;

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

    .line 4297
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 4451
    :try_start_0
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->access$7700()Lcom/google/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 4457
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->mergeFrom(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4453
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4454
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

    .line 4457
    invoke-virtual {p0, v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->mergeFrom(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;

    .line 4459
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;
    .locals 1

    .line 4408
    instance-of v0, p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;

    if-eqz v0, :cond_0

    .line 4409
    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;

    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->mergeFrom(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;

    move-result-object p1

    return-object p1

    .line 4411
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;
    .locals 1

    .line 4417
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->getDefaultInstance()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 4418
    :cond_0
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->getChainType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4419
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->access$7200(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->chainType_:Ljava/lang/Object;

    .line 4420
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->onChanged()V

    .line 4422
    :cond_1
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4423
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->access$7300(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->path_:Ljava/lang/Object;

    .line 4424
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->onChanged()V

    .line 4426
    :cond_2
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->getNetwork()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4427
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->access$7400(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->network_:Ljava/lang/Object;

    .line 4428
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->onChanged()V

    .line 4430
    :cond_3
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->getIsSegWit()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 4431
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->access$7500(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->isSegWit_:Ljava/lang/Object;

    .line 4432
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->onChanged()V

    .line 4434
    :cond_4
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->access$7600(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;

    .line 4435
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 4297
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 4297
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4297
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;
    .locals 0

    .line 4775
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;

    return-object p1
.end method

.method public setChainType(Ljava/lang/String;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 4508
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->chainType_:Ljava/lang/Object;

    .line 4509
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 4505
    throw p1
.end method

.method public setChainTypeBytes(Lcom/google/protobuf/ByteString;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 4532
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->access$7800(Lcom/google/protobuf/ByteString;)V

    .line 4534
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->chainType_:Ljava/lang/Object;

    .line 4535
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 4530
    throw p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 4297
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4297
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;
    .locals 0

    .line 4382
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;

    return-object p1
.end method

.method public setIsSegWit(Ljava/lang/String;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 4736
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->isSegWit_:Ljava/lang/Object;

    .line 4737
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 4733
    throw p1
.end method

.method public setIsSegWitBytes(Lcom/google/protobuf/ByteString;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 4760
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->access$8100(Lcom/google/protobuf/ByteString;)V

    .line 4762
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->isSegWit_:Ljava/lang/Object;

    .line 4763
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 4758
    throw p1
.end method

.method public setNetwork(Ljava/lang/String;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 4660
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->network_:Ljava/lang/Object;

    .line 4661
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 4657
    throw p1
.end method

.method public setNetworkBytes(Lcom/google/protobuf/ByteString;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 4684
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->access$8000(Lcom/google/protobuf/ByteString;)V

    .line 4686
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->network_:Ljava/lang/Object;

    .line 4687
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 4682
    throw p1
.end method

.method public setPath(Ljava/lang/String;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 4584
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->path_:Ljava/lang/Object;

    .line 4585
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 4581
    throw p1
.end method

.method public setPathBytes(Lcom/google/protobuf/ByteString;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 4608
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->access$7900(Lcom/google/protobuf/ByteString;)V

    .line 4610
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->path_:Ljava/lang/Object;

    .line 4611
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 4606
    throw p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 4297
    invoke-virtual {p0, p1, p2, p3}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4297
    invoke-virtual {p0, p1, p2, p3}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;
    .locals 0

    .line 4398
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 4297
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4297
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;
    .locals 0

    .line 4769
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;

    return-object p1
.end method
