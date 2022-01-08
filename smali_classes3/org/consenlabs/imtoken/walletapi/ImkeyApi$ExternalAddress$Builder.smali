.class public final Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "ImkeyApi.java"

# interfaces
.implements Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;",
        ">;",
        "Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressOrBuilder;"
    }
.end annotation


# instance fields
.field private address_:Ljava/lang/Object;

.field private derivedPath_:Ljava/lang/Object;

.field private type_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 6270
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 6411
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->address_:Ljava/lang/Object;

    .line 6487
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->derivedPath_:Ljava/lang/Object;

    .line 6563
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->type_:Ljava/lang/Object;

    .line 6271
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 6276
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 6411
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->address_:Ljava/lang/Object;

    .line 6487
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->derivedPath_:Ljava/lang/Object;

    .line 6563
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->type_:Ljava/lang/Object;

    .line 6277
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V
    .locals 0

    .line 6252
    invoke-direct {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V
    .locals 0

    .line 6252
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6258
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->access$10000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 6281
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->access$10400()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 6252
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 6252
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;
    .locals 0

    .line 6356
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 6252
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->build()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 6252
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->build()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;
    .locals 2

    .line 6309
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->buildPartial()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;

    move-result-object v0

    .line 6310
    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 6311
    :cond_0
    invoke-static {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 6252
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->buildPartial()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 6252
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->buildPartial()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;
    .locals 2

    .line 6318
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V

    .line 6319
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->address_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->access$10602(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6320
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->derivedPath_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->access$10702(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6321
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->type_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->access$10802(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6322
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 6252
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->clear()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 6252
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->clear()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 6252
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->clear()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 6252
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->clear()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;
    .locals 1

    .line 6286
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    .line 6287
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->address_:Ljava/lang/Object;

    .line 6289
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->derivedPath_:Ljava/lang/Object;

    .line 6291
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->type_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearAddress()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;
    .locals 1

    .line 6466
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->getDefaultInstance()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;

    move-result-object v0

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->address_:Ljava/lang/Object;

    .line 6467
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->onChanged()V

    return-object p0
.end method

.method public clearDerivedPath()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;
    .locals 1

    .line 6542
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->getDefaultInstance()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;

    move-result-object v0

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->getDerivedPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->derivedPath_:Ljava/lang/Object;

    .line 6543
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 6252
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 6252
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;
    .locals 0

    .line 6339
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 6252
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 6252
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 6252
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;
    .locals 0

    .line 6344
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;

    return-object p1
.end method

.method public clearType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;
    .locals 1

    .line 6618
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->getDefaultInstance()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;

    move-result-object v0

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->type_:Ljava/lang/Object;

    .line 6619
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 6252
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->clone()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 6252
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->clone()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 6252
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->clone()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 6252
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->clone()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 6252
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->clone()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;

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

    .line 6252
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->clone()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;
    .locals 1

    .line 6328
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;

    return-object v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 2

    .line 6417
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->address_:Ljava/lang/Object;

    .line 6418
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 6419
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 6421
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 6422
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->address_:Ljava/lang/Object;

    return-object v0

    .line 6425
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 6434
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->address_:Ljava/lang/Object;

    .line 6435
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 6436
    check-cast v0, Ljava/lang/String;

    .line 6437
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 6439
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->address_:Ljava/lang/Object;

    return-object v0

    .line 6442
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 6252
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 6252
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;
    .locals 1

    .line 6304
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->getDefaultInstance()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;

    move-result-object v0

    return-object v0
.end method

.method public getDerivedPath()Ljava/lang/String;
    .locals 2

    .line 6493
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->derivedPath_:Ljava/lang/Object;

    .line 6494
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 6495
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 6497
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 6498
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->derivedPath_:Ljava/lang/Object;

    return-object v0

    .line 6501
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDerivedPathBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 6510
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->derivedPath_:Ljava/lang/Object;

    .line 6511
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 6512
    check-cast v0, Ljava/lang/String;

    .line 6513
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 6515
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->derivedPath_:Ljava/lang/Object;

    return-object v0

    .line 6518
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6299
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->access$10000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 2

    .line 6569
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->type_:Ljava/lang/Object;

    .line 6570
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 6571
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 6573
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 6574
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->type_:Ljava/lang/Object;

    return-object v0

    .line 6577
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 6586
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->type_:Ljava/lang/Object;

    .line 6587
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 6588
    check-cast v0, Ljava/lang/String;

    .line 6589
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 6591
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->type_:Ljava/lang/Object;

    return-object v0

    .line 6594
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 6264
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->access$10100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;

    const-class v2, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;

    .line 6265
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

    .line 6252
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 6252
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;

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

    .line 6252
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;

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

    .line 6252
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 6252
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;

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

    .line 6252
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 6399
    :try_start_0
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->access$11000()Lcom/google/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 6405
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->mergeFrom(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6401
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6402
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

    .line 6405
    invoke-virtual {p0, v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->mergeFrom(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;

    .line 6407
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;
    .locals 1

    .line 6360
    instance-of v0, p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;

    if-eqz v0, :cond_0

    .line 6361
    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;

    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->mergeFrom(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;

    move-result-object p1

    return-object p1

    .line 6363
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;
    .locals 1

    .line 6369
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->getDefaultInstance()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 6370
    :cond_0
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6371
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->access$10600(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->address_:Ljava/lang/Object;

    .line 6372
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->onChanged()V

    .line 6374
    :cond_1
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->getDerivedPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6375
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->access$10700(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->derivedPath_:Ljava/lang/Object;

    .line 6376
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->onChanged()V

    .line 6378
    :cond_2
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 6379
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->access$10800(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->type_:Ljava/lang/Object;

    .line 6380
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->onChanged()V

    .line 6382
    :cond_3
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->access$10900(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;

    .line 6383
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 6252
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 6252
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 6252
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;
    .locals 0

    .line 6647
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;

    return-object p1
.end method

.method public setAddress(Ljava/lang/String;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 6456
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->address_:Ljava/lang/Object;

    .line 6457
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 6453
    throw p1
.end method

.method public setAddressBytes(Lcom/google/protobuf/ByteString;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 6480
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->access$11100(Lcom/google/protobuf/ByteString;)V

    .line 6482
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->address_:Ljava/lang/Object;

    .line 6483
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 6478
    throw p1
.end method

.method public setDerivedPath(Ljava/lang/String;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 6532
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->derivedPath_:Ljava/lang/Object;

    .line 6533
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 6529
    throw p1
.end method

.method public setDerivedPathBytes(Lcom/google/protobuf/ByteString;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 6556
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->access$11200(Lcom/google/protobuf/ByteString;)V

    .line 6558
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->derivedPath_:Ljava/lang/Object;

    .line 6559
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 6554
    throw p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 6252
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 6252
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;
    .locals 0

    .line 6334
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 6252
    invoke-virtual {p0, p1, p2, p3}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 6252
    invoke-virtual {p0, p1, p2, p3}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;
    .locals 0

    .line 6350
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;

    return-object p1
.end method

.method public setType(Ljava/lang/String;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 6608
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->type_:Ljava/lang/Object;

    .line 6609
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 6605
    throw p1
.end method

.method public setTypeBytes(Lcom/google/protobuf/ByteString;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 6632
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->access$11300(Lcom/google/protobuf/ByteString;)V

    .line 6634
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->type_:Ljava/lang/Object;

    .line 6635
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 6630
    throw p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 6252
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 6252
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;
    .locals 0

    .line 6641
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;

    return-object p1
.end method
