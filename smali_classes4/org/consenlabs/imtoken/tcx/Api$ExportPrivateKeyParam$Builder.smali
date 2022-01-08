.class public final Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "Api.java"

# interfaces
.implements Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParamOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;",
        ">;",
        "Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParamOrBuilder;"
    }
.end annotation


# instance fields
.field private chainType_:Ljava/lang/Object;

.field private id_:Ljava/lang/Object;

.field private mainAddress_:Ljava/lang/Object;

.field private network_:Ljava/lang/Object;

.field private password_:Ljava/lang/Object;

.field private path_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3205
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 3367
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->id_:Ljava/lang/Object;

    .line 3443
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->password_:Ljava/lang/Object;

    .line 3519
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->chainType_:Ljava/lang/Object;

    .line 3595
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->network_:Ljava/lang/Object;

    .line 3671
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->mainAddress_:Ljava/lang/Object;

    .line 3747
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->path_:Ljava/lang/Object;

    .line 3206
    invoke-direct {p0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 3211
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 3367
    iput-object p1, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->id_:Ljava/lang/Object;

    .line 3443
    iput-object p1, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->password_:Ljava/lang/Object;

    .line 3519
    iput-object p1, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->chainType_:Ljava/lang/Object;

    .line 3595
    iput-object p1, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->network_:Ljava/lang/Object;

    .line 3671
    iput-object p1, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->mainAddress_:Ljava/lang/Object;

    .line 3747
    iput-object p1, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->path_:Ljava/lang/Object;

    .line 3212
    invoke-direct {p0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lorg/consenlabs/imtoken/tcx/Api$1;)V
    .locals 0

    .line 3187
    invoke-direct {p0, p1}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/consenlabs/imtoken/tcx/Api$1;)V
    .locals 0

    .line 3187
    invoke-direct {p0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 3193
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/Api;->access$4000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 3216
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->access$4400()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3187
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3187
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;
    .locals 0

    .line 3300
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 3187
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->build()Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3187
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->build()Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;
    .locals 2

    .line 3250
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->buildPartial()Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;

    move-result-object v0

    .line 3251
    invoke-virtual {v0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3252
    :cond_0
    invoke-static {v0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 3187
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->buildPartial()Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3187
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->buildPartial()Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;
    .locals 2

    .line 3259
    new-instance v0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lorg/consenlabs/imtoken/tcx/Api$1;)V

    .line 3260
    iget-object v1, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->id_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->access$4602(Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3261
    iget-object v1, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->password_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->access$4702(Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3262
    iget-object v1, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->chainType_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->access$4802(Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3263
    iget-object v1, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->network_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->access$4902(Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3264
    iget-object v1, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->mainAddress_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->access$5002(Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3265
    iget-object v1, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->path_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->access$5102(Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3266
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 3187
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->clear()Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 3187
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->clear()Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3187
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->clear()Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3187
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->clear()Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;
    .locals 1

    .line 3221
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    .line 3222
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->id_:Ljava/lang/Object;

    .line 3224
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->password_:Ljava/lang/Object;

    .line 3226
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->chainType_:Ljava/lang/Object;

    .line 3228
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->network_:Ljava/lang/Object;

    .line 3230
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->mainAddress_:Ljava/lang/Object;

    .line 3232
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->path_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearChainType()Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;
    .locals 1

    .line 3574
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->getDefaultInstance()Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;

    move-result-object v0

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->getChainType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->chainType_:Ljava/lang/Object;

    .line 3575
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3187
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3187
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;
    .locals 0

    .line 3283
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;

    return-object p1
.end method

.method public clearId()Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;
    .locals 1

    .line 3422
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->getDefaultInstance()Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;

    move-result-object v0

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->id_:Ljava/lang/Object;

    .line 3423
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMainAddress()Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;
    .locals 1

    .line 3726
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->getDefaultInstance()Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;

    move-result-object v0

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->getMainAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->mainAddress_:Ljava/lang/Object;

    .line 3727
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->onChanged()V

    return-object p0
.end method

.method public clearNetwork()Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;
    .locals 1

    .line 3650
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->getDefaultInstance()Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;

    move-result-object v0

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->getNetwork()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->network_:Ljava/lang/Object;

    .line 3651
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 3187
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3187
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3187
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;
    .locals 0

    .line 3288
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;

    return-object p1
.end method

.method public clearPassword()Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;
    .locals 1

    .line 3498
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->getDefaultInstance()Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;

    move-result-object v0

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->getPassword()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->password_:Ljava/lang/Object;

    .line 3499
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->onChanged()V

    return-object p0
.end method

.method public clearPath()Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;
    .locals 1

    .line 3802
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->getDefaultInstance()Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;

    move-result-object v0

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->path_:Ljava/lang/Object;

    .line 3803
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 3187
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->clone()Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 3187
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->clone()Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 3187
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->clone()Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3187
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->clone()Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3187
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->clone()Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;

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

    .line 3187
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->clone()Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;
    .locals 1

    .line 3272
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;

    return-object v0
.end method

.method public getChainType()Ljava/lang/String;
    .locals 2

    .line 3525
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->chainType_:Ljava/lang/Object;

    .line 3526
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3527
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3529
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3530
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->chainType_:Ljava/lang/Object;

    return-object v0

    .line 3533
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getChainTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 3542
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->chainType_:Ljava/lang/Object;

    .line 3543
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3544
    check-cast v0, Ljava/lang/String;

    .line 3545
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3547
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->chainType_:Ljava/lang/Object;

    return-object v0

    .line 3550
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 3187
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3187
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;
    .locals 1

    .line 3245
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->getDefaultInstance()Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 3240
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/Api;->access$4000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .line 3373
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->id_:Ljava/lang/Object;

    .line 3374
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3375
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3377
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3378
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->id_:Ljava/lang/Object;

    return-object v0

    .line 3381
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 3390
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->id_:Ljava/lang/Object;

    .line 3391
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3392
    check-cast v0, Ljava/lang/String;

    .line 3393
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3395
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->id_:Ljava/lang/Object;

    return-object v0

    .line 3398
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getMainAddress()Ljava/lang/String;
    .locals 2

    .line 3677
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->mainAddress_:Ljava/lang/Object;

    .line 3678
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3679
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3681
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3682
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->mainAddress_:Ljava/lang/Object;

    return-object v0

    .line 3685
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getMainAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 3694
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->mainAddress_:Ljava/lang/Object;

    .line 3695
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3696
    check-cast v0, Ljava/lang/String;

    .line 3697
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3699
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->mainAddress_:Ljava/lang/Object;

    return-object v0

    .line 3702
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getNetwork()Ljava/lang/String;
    .locals 2

    .line 3601
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->network_:Ljava/lang/Object;

    .line 3602
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3603
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3605
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3606
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->network_:Ljava/lang/Object;

    return-object v0

    .line 3609
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 3618
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->network_:Ljava/lang/Object;

    .line 3619
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3620
    check-cast v0, Ljava/lang/String;

    .line 3621
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3623
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->network_:Ljava/lang/Object;

    return-object v0

    .line 3626
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 2

    .line 3449
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->password_:Ljava/lang/Object;

    .line 3450
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3451
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3453
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3454
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->password_:Ljava/lang/Object;

    return-object v0

    .line 3457
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPasswordBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 3466
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->password_:Ljava/lang/Object;

    .line 3467
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3468
    check-cast v0, Ljava/lang/String;

    .line 3469
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3471
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->password_:Ljava/lang/Object;

    return-object v0

    .line 3474
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 2

    .line 3753
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->path_:Ljava/lang/Object;

    .line 3754
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3755
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3757
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3758
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->path_:Ljava/lang/Object;

    return-object v0

    .line 3761
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPathBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 3770
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->path_:Ljava/lang/Object;

    .line 3771
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3772
    check-cast v0, Ljava/lang/String;

    .line 3773
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3775
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->path_:Ljava/lang/Object;

    return-object v0

    .line 3778
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 3199
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/Api;->access$4100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;

    const-class v2, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;

    .line 3200
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

    .line 3187
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 3187
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;

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

    .line 3187
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;

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

    .line 3187
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3187
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;

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

    .line 3187
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3355
    :try_start_0
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->access$5300()Lcom/google/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 3361
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->mergeFrom(Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;)Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3357
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3358
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

    .line 3361
    invoke-virtual {p0, v0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->mergeFrom(Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;)Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;

    .line 3363
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;
    .locals 1

    .line 3304
    instance-of v0, p1, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;

    if-eqz v0, :cond_0

    .line 3305
    check-cast p1, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;

    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->mergeFrom(Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;)Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;

    move-result-object p1

    return-object p1

    .line 3307
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;)Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;
    .locals 1

    .line 3313
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->getDefaultInstance()Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 3314
    :cond_0
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3315
    invoke-static {p1}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->access$4600(Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->id_:Ljava/lang/Object;

    .line 3316
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->onChanged()V

    .line 3318
    :cond_1
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->getPassword()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3319
    invoke-static {p1}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->access$4700(Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->password_:Ljava/lang/Object;

    .line 3320
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->onChanged()V

    .line 3322
    :cond_2
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->getChainType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3323
    invoke-static {p1}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->access$4800(Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->chainType_:Ljava/lang/Object;

    .line 3324
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->onChanged()V

    .line 3326
    :cond_3
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->getNetwork()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3327
    invoke-static {p1}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->access$4900(Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->network_:Ljava/lang/Object;

    .line 3328
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->onChanged()V

    .line 3330
    :cond_4
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->getMainAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 3331
    invoke-static {p1}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->access$5000(Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->mainAddress_:Ljava/lang/Object;

    .line 3332
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->onChanged()V

    .line 3334
    :cond_5
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 3335
    invoke-static {p1}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->access$5100(Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->path_:Ljava/lang/Object;

    .line 3336
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->onChanged()V

    .line 3338
    :cond_6
    invoke-static {p1}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->access$5200(Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;

    .line 3339
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 3187
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3187
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3187
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;
    .locals 0

    .line 3831
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;

    return-object p1
.end method

.method public setChainType(Ljava/lang/String;)Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 3564
    iput-object p1, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->chainType_:Ljava/lang/Object;

    .line 3565
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 3561
    throw p1
.end method

.method public setChainTypeBytes(Lcom/google/protobuf/ByteString;)Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 3588
    invoke-static {p1}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->access$5600(Lcom/google/protobuf/ByteString;)V

    .line 3590
    iput-object p1, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->chainType_:Ljava/lang/Object;

    .line 3591
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 3586
    throw p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3187
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3187
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;
    .locals 0

    .line 3278
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;

    return-object p1
.end method

.method public setId(Ljava/lang/String;)Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 3412
    iput-object p1, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->id_:Ljava/lang/Object;

    .line 3413
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 3409
    throw p1
.end method

.method public setIdBytes(Lcom/google/protobuf/ByteString;)Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 3436
    invoke-static {p1}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->access$5400(Lcom/google/protobuf/ByteString;)V

    .line 3438
    iput-object p1, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->id_:Ljava/lang/Object;

    .line 3439
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 3434
    throw p1
.end method

.method public setMainAddress(Ljava/lang/String;)Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 3716
    iput-object p1, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->mainAddress_:Ljava/lang/Object;

    .line 3717
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 3713
    throw p1
.end method

.method public setMainAddressBytes(Lcom/google/protobuf/ByteString;)Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 3740
    invoke-static {p1}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->access$5800(Lcom/google/protobuf/ByteString;)V

    .line 3742
    iput-object p1, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->mainAddress_:Ljava/lang/Object;

    .line 3743
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 3738
    throw p1
.end method

.method public setNetwork(Ljava/lang/String;)Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 3640
    iput-object p1, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->network_:Ljava/lang/Object;

    .line 3641
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 3637
    throw p1
.end method

.method public setNetworkBytes(Lcom/google/protobuf/ByteString;)Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 3664
    invoke-static {p1}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->access$5700(Lcom/google/protobuf/ByteString;)V

    .line 3666
    iput-object p1, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->network_:Ljava/lang/Object;

    .line 3667
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 3662
    throw p1
.end method

.method public setPassword(Ljava/lang/String;)Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 3488
    iput-object p1, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->password_:Ljava/lang/Object;

    .line 3489
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 3485
    throw p1
.end method

.method public setPasswordBytes(Lcom/google/protobuf/ByteString;)Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 3512
    invoke-static {p1}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->access$5500(Lcom/google/protobuf/ByteString;)V

    .line 3514
    iput-object p1, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->password_:Ljava/lang/Object;

    .line 3515
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 3510
    throw p1
.end method

.method public setPath(Ljava/lang/String;)Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 3792
    iput-object p1, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->path_:Ljava/lang/Object;

    .line 3793
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 3789
    throw p1
.end method

.method public setPathBytes(Lcom/google/protobuf/ByteString;)Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 3816
    invoke-static {p1}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->access$5900(Lcom/google/protobuf/ByteString;)V

    .line 3818
    iput-object p1, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->path_:Ljava/lang/Object;

    .line 3819
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 3814
    throw p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3187
    invoke-virtual {p0, p1, p2, p3}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3187
    invoke-virtual {p0, p1, p2, p3}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;
    .locals 0

    .line 3294
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3187
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3187
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;
    .locals 0

    .line 3825
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;

    return-object p1
.end method
