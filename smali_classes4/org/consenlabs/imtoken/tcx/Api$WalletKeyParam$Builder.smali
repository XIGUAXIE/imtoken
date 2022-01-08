.class public final Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "Api.java"

# interfaces
.implements Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParamOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;",
        ">;",
        "Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParamOrBuilder;"
    }
.end annotation


# instance fields
.field private id_:Ljava/lang/Object;

.field private password_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 4265
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 4399
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;->id_:Ljava/lang/Object;

    .line 4475
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;->password_:Ljava/lang/Object;

    .line 4266
    invoke-direct {p0}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 4271
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 4399
    iput-object p1, p0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;->id_:Ljava/lang/Object;

    .line 4475
    iput-object p1, p0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;->password_:Ljava/lang/Object;

    .line 4272
    invoke-direct {p0}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lorg/consenlabs/imtoken/tcx/Api$1;)V
    .locals 0

    .line 4247
    invoke-direct {p0, p1}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/consenlabs/imtoken/tcx/Api$1;)V
    .locals 0

    .line 4247
    invoke-direct {p0}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 4253
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/Api;->access$6100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 4276
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->access$6500()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 4247
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4247
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;
    .locals 0

    .line 4348
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 4247
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;->build()Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 4247
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;->build()Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;
    .locals 2

    .line 4302
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;->buildPartial()Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;

    move-result-object v0

    .line 4303
    invoke-virtual {v0}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 4304
    :cond_0
    invoke-static {v0}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 4247
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;->buildPartial()Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 4247
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;->buildPartial()Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;
    .locals 2

    .line 4311
    new-instance v0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lorg/consenlabs/imtoken/tcx/Api$1;)V

    .line 4312
    iget-object v1, p0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;->id_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->access$6702(Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4313
    iget-object v1, p0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;->password_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->access$6802(Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4314
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 4247
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;->clear()Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 4247
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;->clear()Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4247
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;->clear()Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4247
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;->clear()Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;
    .locals 1

    .line 4281
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    .line 4282
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;->id_:Ljava/lang/Object;

    .line 4284
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;->password_:Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 4247
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4247
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;
    .locals 0

    .line 4331
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;

    return-object p1
.end method

.method public clearId()Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;
    .locals 1

    .line 4454
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->getDefaultInstance()Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;

    move-result-object v0

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;->id_:Ljava/lang/Object;

    .line 4455
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 4247
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 4247
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4247
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;
    .locals 0

    .line 4336
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;

    return-object p1
.end method

.method public clearPassword()Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;
    .locals 1

    .line 4530
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->getDefaultInstance()Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;

    move-result-object v0

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->getPassword()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;->password_:Ljava/lang/Object;

    .line 4531
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 4247
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;->clone()Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 4247
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;->clone()Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 4247
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;->clone()Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4247
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;->clone()Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4247
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;->clone()Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;

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

    .line 4247
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;->clone()Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;
    .locals 1

    .line 4320
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 4247
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 4247
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;
    .locals 1

    .line 4297
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->getDefaultInstance()Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 4292
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/Api;->access$6100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .line 4405
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;->id_:Ljava/lang/Object;

    .line 4406
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 4407
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4409
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 4410
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;->id_:Ljava/lang/Object;

    return-object v0

    .line 4413
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 4422
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;->id_:Ljava/lang/Object;

    .line 4423
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4424
    check-cast v0, Ljava/lang/String;

    .line 4425
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4427
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;->id_:Ljava/lang/Object;

    return-object v0

    .line 4430
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 2

    .line 4481
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;->password_:Ljava/lang/Object;

    .line 4482
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 4483
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4485
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 4486
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;->password_:Ljava/lang/Object;

    return-object v0

    .line 4489
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPasswordBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 4498
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;->password_:Ljava/lang/Object;

    .line 4499
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4500
    check-cast v0, Ljava/lang/String;

    .line 4501
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4503
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;->password_:Ljava/lang/Object;

    return-object v0

    .line 4506
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 4259
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/Api;->access$6200()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;

    const-class v2, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;

    .line 4260
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

    .line 4247
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 4247
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;

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

    .line 4247
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;

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

    .line 4247
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4247
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;

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

    .line 4247
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 4387
    :try_start_0
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->access$7000()Lcom/google/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 4393
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;->mergeFrom(Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;)Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4389
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4390
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

    .line 4393
    invoke-virtual {p0, v0}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;->mergeFrom(Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;)Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;

    .line 4395
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;
    .locals 1

    .line 4352
    instance-of v0, p1, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;

    if-eqz v0, :cond_0

    .line 4353
    check-cast p1, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;

    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;->mergeFrom(Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;)Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;

    move-result-object p1

    return-object p1

    .line 4355
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;)Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;
    .locals 1

    .line 4361
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->getDefaultInstance()Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 4362
    :cond_0
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4363
    invoke-static {p1}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->access$6700(Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;->id_:Ljava/lang/Object;

    .line 4364
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;->onChanged()V

    .line 4366
    :cond_1
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->getPassword()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4367
    invoke-static {p1}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->access$6800(Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;->password_:Ljava/lang/Object;

    .line 4368
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;->onChanged()V

    .line 4370
    :cond_2
    invoke-static {p1}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->access$6900(Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;

    .line 4371
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 4247
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 4247
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4247
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;
    .locals 0

    .line 4559
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 4247
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4247
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;
    .locals 0

    .line 4326
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;

    return-object p1
.end method

.method public setId(Ljava/lang/String;)Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 4444
    iput-object p1, p0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;->id_:Ljava/lang/Object;

    .line 4445
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 4441
    throw p1
.end method

.method public setIdBytes(Lcom/google/protobuf/ByteString;)Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 4468
    invoke-static {p1}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->access$7100(Lcom/google/protobuf/ByteString;)V

    .line 4470
    iput-object p1, p0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;->id_:Ljava/lang/Object;

    .line 4471
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 4466
    throw p1
.end method

.method public setPassword(Ljava/lang/String;)Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 4520
    iput-object p1, p0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;->password_:Ljava/lang/Object;

    .line 4521
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 4517
    throw p1
.end method

.method public setPasswordBytes(Lcom/google/protobuf/ByteString;)Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 4544
    invoke-static {p1}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->access$7200(Lcom/google/protobuf/ByteString;)V

    .line 4546
    iput-object p1, p0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;->password_:Ljava/lang/Object;

    .line 4547
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 4542
    throw p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 4247
    invoke-virtual {p0, p1, p2, p3}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4247
    invoke-virtual {p0, p1, p2, p3}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;
    .locals 0

    .line 4342
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 4247
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4247
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;
    .locals 0

    .line 4553
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;

    return-object p1
.end method
