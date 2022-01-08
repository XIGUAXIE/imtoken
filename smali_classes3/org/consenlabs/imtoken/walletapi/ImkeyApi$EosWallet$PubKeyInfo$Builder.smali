.class public final Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "ImkeyApi.java"

# interfaces
.implements Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;",
        ">;",
        "Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfoOrBuilder;"
    }
.end annotation


# instance fields
.field private derivedMode_:Ljava/lang/Object;

.field private path_:Ljava/lang/Object;

.field private publicKey_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 8499
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 8640
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->path_:Ljava/lang/Object;

    .line 8716
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->derivedMode_:Ljava/lang/Object;

    .line 8792
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->publicKey_:Ljava/lang/Object;

    .line 8500
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 8505
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 8640
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->path_:Ljava/lang/Object;

    .line 8716
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->derivedMode_:Ljava/lang/Object;

    .line 8792
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->publicKey_:Ljava/lang/Object;

    .line 8506
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V
    .locals 0

    .line 8481
    invoke-direct {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V
    .locals 0

    .line 8481
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 8487
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->access$13500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 8510
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->access$13900()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 8481
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 8481
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;
    .locals 0

    .line 8585
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 8481
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->build()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 8481
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->build()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;
    .locals 2

    .line 8538
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->buildPartial()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;

    move-result-object v0

    .line 8539
    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 8540
    :cond_0
    invoke-static {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 8481
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->buildPartial()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 8481
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->buildPartial()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;
    .locals 2

    .line 8547
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V

    .line 8548
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->path_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->access$14102(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8549
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->derivedMode_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->access$14202(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8550
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->publicKey_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->access$14302(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8551
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 8481
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->clear()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 8481
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->clear()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 8481
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->clear()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 8481
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->clear()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;
    .locals 1

    .line 8515
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    .line 8516
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->path_:Ljava/lang/Object;

    .line 8518
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->derivedMode_:Ljava/lang/Object;

    .line 8520
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->publicKey_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearDerivedMode()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;
    .locals 1

    .line 8771
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->getDefaultInstance()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->getDerivedMode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->derivedMode_:Ljava/lang/Object;

    .line 8772
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 8481
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 8481
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;
    .locals 0

    .line 8568
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 8481
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 8481
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 8481
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;
    .locals 0

    .line 8573
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;

    return-object p1
.end method

.method public clearPath()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;
    .locals 1

    .line 8695
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->getDefaultInstance()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->path_:Ljava/lang/Object;

    .line 8696
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public clearPublicKey()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;
    .locals 1

    .line 8847
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->getDefaultInstance()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->getPublicKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->publicKey_:Ljava/lang/Object;

    .line 8848
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 8481
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->clone()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 8481
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->clone()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 8481
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->clone()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 8481
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->clone()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 8481
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->clone()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;

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

    .line 8481
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->clone()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;
    .locals 1

    .line 8557
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 8481
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 8481
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;
    .locals 1

    .line 8533
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->getDefaultInstance()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDerivedMode()Ljava/lang/String;
    .locals 2

    .line 8722
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->derivedMode_:Ljava/lang/Object;

    .line 8723
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 8724
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 8726
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 8727
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->derivedMode_:Ljava/lang/Object;

    return-object v0

    .line 8730
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDerivedModeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 8739
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->derivedMode_:Ljava/lang/Object;

    .line 8740
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 8741
    check-cast v0, Ljava/lang/String;

    .line 8742
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 8744
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->derivedMode_:Ljava/lang/Object;

    return-object v0

    .line 8747
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 8528
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->access$13500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 2

    .line 8646
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->path_:Ljava/lang/Object;

    .line 8647
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 8648
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 8650
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 8651
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->path_:Ljava/lang/Object;

    return-object v0

    .line 8654
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPathBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 8663
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->path_:Ljava/lang/Object;

    .line 8664
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 8665
    check-cast v0, Ljava/lang/String;

    .line 8666
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 8668
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->path_:Ljava/lang/Object;

    return-object v0

    .line 8671
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getPublicKey()Ljava/lang/String;
    .locals 2

    .line 8798
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->publicKey_:Ljava/lang/Object;

    .line 8799
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 8800
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 8802
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 8803
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->publicKey_:Ljava/lang/Object;

    return-object v0

    .line 8806
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPublicKeyBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 8815
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->publicKey_:Ljava/lang/Object;

    .line 8816
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 8817
    check-cast v0, Ljava/lang/String;

    .line 8818
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 8820
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->publicKey_:Ljava/lang/Object;

    return-object v0

    .line 8823
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 8493
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->access$13600()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;

    const-class v2, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;

    .line 8494
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

    .line 8481
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 8481
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;

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

    .line 8481
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;

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

    .line 8481
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 8481
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;

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

    .line 8481
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 8628
    :try_start_0
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->access$14500()Lcom/google/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 8634
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->mergeFrom(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8630
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8631
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

    .line 8634
    invoke-virtual {p0, v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->mergeFrom(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;

    .line 8636
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;
    .locals 1

    .line 8589
    instance-of v0, p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;

    if-eqz v0, :cond_0

    .line 8590
    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;

    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->mergeFrom(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;

    move-result-object p1

    return-object p1

    .line 8592
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;
    .locals 1

    .line 8598
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->getDefaultInstance()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 8599
    :cond_0
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8600
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->access$14100(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->path_:Ljava/lang/Object;

    .line 8601
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->onChanged()V

    .line 8603
    :cond_1
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->getDerivedMode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 8604
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->access$14200(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->derivedMode_:Ljava/lang/Object;

    .line 8605
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->onChanged()V

    .line 8607
    :cond_2
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->getPublicKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 8608
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->access$14300(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->publicKey_:Ljava/lang/Object;

    .line 8609
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->onChanged()V

    .line 8611
    :cond_3
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->access$14400(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;

    .line 8612
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 8481
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 8481
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 8481
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;
    .locals 0

    .line 8876
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;

    return-object p1
.end method

.method public setDerivedMode(Ljava/lang/String;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 8761
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->derivedMode_:Ljava/lang/Object;

    .line 8762
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 8758
    throw p1
.end method

.method public setDerivedModeBytes(Lcom/google/protobuf/ByteString;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 8785
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->access$14700(Lcom/google/protobuf/ByteString;)V

    .line 8787
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->derivedMode_:Ljava/lang/Object;

    .line 8788
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 8783
    throw p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 8481
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 8481
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;
    .locals 0

    .line 8563
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;

    return-object p1
.end method

.method public setPath(Ljava/lang/String;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 8685
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->path_:Ljava/lang/Object;

    .line 8686
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 8682
    throw p1
.end method

.method public setPathBytes(Lcom/google/protobuf/ByteString;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 8709
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->access$14600(Lcom/google/protobuf/ByteString;)V

    .line 8711
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->path_:Ljava/lang/Object;

    .line 8712
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 8707
    throw p1
.end method

.method public setPublicKey(Ljava/lang/String;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 8837
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->publicKey_:Ljava/lang/Object;

    .line 8838
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 8834
    throw p1
.end method

.method public setPublicKeyBytes(Lcom/google/protobuf/ByteString;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 8861
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->access$14800(Lcom/google/protobuf/ByteString;)V

    .line 8863
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->publicKey_:Ljava/lang/Object;

    .line 8864
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 8859
    throw p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 8481
    invoke-virtual {p0, p1, p2, p3}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 8481
    invoke-virtual {p0, p1, p2, p3}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;
    .locals 0

    .line 8579
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 8481
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 8481
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;
    .locals 0

    .line 8870
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;

    return-object p1
.end method
