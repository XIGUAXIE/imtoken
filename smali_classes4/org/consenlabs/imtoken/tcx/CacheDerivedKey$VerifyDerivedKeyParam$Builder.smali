.class public final Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "CacheDerivedKey.java"

# interfaces
.implements Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParamOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;",
        ">;",
        "Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParamOrBuilder;"
    }
.end annotation


# instance fields
.field private derivedKey_:Ljava/lang/Object;

.field private id_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 393
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 527
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;->id_:Ljava/lang/Object;

    .line 603
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;->derivedKey_:Ljava/lang/Object;

    .line 394
    invoke-direct {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 399
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 527
    iput-object p1, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;->id_:Ljava/lang/Object;

    .line 603
    iput-object p1, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;->derivedKey_:Ljava/lang/Object;

    .line 400
    invoke-direct {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$1;)V
    .locals 0

    .line 375
    invoke-direct {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$1;)V
    .locals 0

    .line 375
    invoke-direct {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 381
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 404
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->access$400()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 375
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 375
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;
    .locals 0

    .line 476
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 375
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;->build()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 375
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;->build()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;
    .locals 2

    .line 430
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;->buildPartial()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;

    move-result-object v0

    .line 431
    invoke-virtual {v0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 432
    :cond_0
    invoke-static {v0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 375
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;->buildPartial()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 375
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;->buildPartial()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;
    .locals 2

    .line 439
    new-instance v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$1;)V

    .line 440
    iget-object v1, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;->id_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->access$602(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    iget-object v1, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;->derivedKey_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->access$702(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 375
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;->clear()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 375
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;->clear()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 375
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;->clear()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 375
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;->clear()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;
    .locals 1

    .line 409
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    .line 410
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;->id_:Ljava/lang/Object;

    .line 412
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;->derivedKey_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearDerivedKey()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;
    .locals 1

    .line 658
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->getDefaultInstance()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;

    move-result-object v0

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->getDerivedKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;->derivedKey_:Ljava/lang/Object;

    .line 659
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 375
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 375
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;
    .locals 0

    .line 459
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;

    return-object p1
.end method

.method public clearId()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;
    .locals 1

    .line 582
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->getDefaultInstance()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;

    move-result-object v0

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;->id_:Ljava/lang/Object;

    .line 583
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 375
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 375
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 375
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;
    .locals 0

    .line 464
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 375
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;->clone()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 375
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;->clone()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 375
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;->clone()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 375
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;->clone()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 375
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;->clone()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;

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

    .line 375
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;->clone()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;
    .locals 1

    .line 448
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 375
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 375
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;
    .locals 1

    .line 425
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->getDefaultInstance()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;

    move-result-object v0

    return-object v0
.end method

.method public getDerivedKey()Ljava/lang/String;
    .locals 2

    .line 609
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;->derivedKey_:Ljava/lang/Object;

    .line 610
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 611
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 613
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 614
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;->derivedKey_:Ljava/lang/Object;

    return-object v0

    .line 617
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDerivedKeyBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 626
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;->derivedKey_:Ljava/lang/Object;

    .line 627
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 628
    check-cast v0, Ljava/lang/String;

    .line 629
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 631
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;->derivedKey_:Ljava/lang/Object;

    return-object v0

    .line 634
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 420
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .line 533
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;->id_:Ljava/lang/Object;

    .line 534
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 535
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 537
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 538
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;->id_:Ljava/lang/Object;

    return-object v0

    .line 541
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 550
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;->id_:Ljava/lang/Object;

    .line 551
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 552
    check-cast v0, Ljava/lang/String;

    .line 553
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 555
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;->id_:Ljava/lang/Object;

    return-object v0

    .line 558
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 387
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey;->access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;

    const-class v2, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;

    .line 388
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

    .line 375
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 375
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;

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

    .line 375
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;

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

    .line 375
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 375
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;

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

    .line 375
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 515
    :try_start_0
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->access$900()Lcom/google/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 521
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;->mergeFrom(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 517
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 518
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

    .line 521
    invoke-virtual {p0, v0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;->mergeFrom(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;

    .line 523
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;
    .locals 1

    .line 480
    instance-of v0, p1, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;

    if-eqz v0, :cond_0

    .line 481
    check-cast p1, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;

    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;->mergeFrom(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;

    move-result-object p1

    return-object p1

    .line 483
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;
    .locals 1

    .line 489
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->getDefaultInstance()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 490
    :cond_0
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 491
    invoke-static {p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->access$600(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;->id_:Ljava/lang/Object;

    .line 492
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;->onChanged()V

    .line 494
    :cond_1
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->getDerivedKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 495
    invoke-static {p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->access$700(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;->derivedKey_:Ljava/lang/Object;

    .line 496
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;->onChanged()V

    .line 498
    :cond_2
    invoke-static {p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->access$800(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;

    .line 499
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 375
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 375
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 375
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;
    .locals 0

    .line 687
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;

    return-object p1
.end method

.method public setDerivedKey(Ljava/lang/String;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 648
    iput-object p1, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;->derivedKey_:Ljava/lang/Object;

    .line 649
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 645
    throw p1
.end method

.method public setDerivedKeyBytes(Lcom/google/protobuf/ByteString;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 672
    invoke-static {p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->access$1100(Lcom/google/protobuf/ByteString;)V

    .line 674
    iput-object p1, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;->derivedKey_:Ljava/lang/Object;

    .line 675
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 670
    throw p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 375
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 375
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;
    .locals 0

    .line 454
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;

    return-object p1
.end method

.method public setId(Ljava/lang/String;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 572
    iput-object p1, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;->id_:Ljava/lang/Object;

    .line 573
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 569
    throw p1
.end method

.method public setIdBytes(Lcom/google/protobuf/ByteString;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 596
    invoke-static {p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->access$1000(Lcom/google/protobuf/ByteString;)V

    .line 598
    iput-object p1, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;->id_:Ljava/lang/Object;

    .line 599
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 594
    throw p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 375
    invoke-virtual {p0, p1, p2, p3}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 375
    invoke-virtual {p0, p1, p2, p3}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;
    .locals 0

    .line 470
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 375
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 375
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;
    .locals 0

    .line 681
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;

    return-object p1
.end method
