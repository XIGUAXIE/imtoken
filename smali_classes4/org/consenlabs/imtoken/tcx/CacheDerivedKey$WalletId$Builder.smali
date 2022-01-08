.class public final Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "CacheDerivedKey.java"

# interfaces
.implements Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletIdOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;",
        ">;",
        "Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletIdOrBuilder;"
    }
.end annotation


# instance fields
.field private id_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2539
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 2666
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;->id_:Ljava/lang/Object;

    .line 2540
    invoke-direct {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 2545
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 2666
    iput-object p1, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;->id_:Ljava/lang/Object;

    .line 2546
    invoke-direct {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$1;)V
    .locals 0

    .line 2521
    invoke-direct {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$1;)V
    .locals 0

    .line 2521
    invoke-direct {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 2527
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey;->access$4000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 2550
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;->access$4400()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2521
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2521
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;
    .locals 0

    .line 2619
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 2521
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;->build()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2521
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;->build()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;
    .locals 2

    .line 2574
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;->buildPartial()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;

    move-result-object v0

    .line 2575
    invoke-virtual {v0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 2576
    :cond_0
    invoke-static {v0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 2521
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;->buildPartial()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2521
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;->buildPartial()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;
    .locals 2

    .line 2583
    new-instance v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$1;)V

    .line 2584
    iget-object v1, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;->id_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;->access$4602(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2585
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 2521
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;->clear()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 2521
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;->clear()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 2521
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;->clear()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2521
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;->clear()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;
    .locals 1

    .line 2555
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    .line 2556
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;->id_:Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2521
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2521
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;
    .locals 0

    .line 2602
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;

    return-object p1
.end method

.method public clearId()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;
    .locals 1

    .line 2721
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;->getDefaultInstance()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;

    move-result-object v0

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;->id_:Ljava/lang/Object;

    .line 2722
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2521
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2521
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2521
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;
    .locals 0

    .line 2607
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 2521
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;->clone()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 2521
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;->clone()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 2521
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;->clone()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 2521
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;->clone()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2521
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;->clone()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;

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

    .line 2521
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;->clone()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;
    .locals 1

    .line 2591
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 2521
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2521
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;
    .locals 1

    .line 2569
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;->getDefaultInstance()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 2564
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey;->access$4000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .line 2672
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;->id_:Ljava/lang/Object;

    .line 2673
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2674
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2676
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2677
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;->id_:Ljava/lang/Object;

    return-object v0

    .line 2680
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 2689
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;->id_:Ljava/lang/Object;

    .line 2690
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2691
    check-cast v0, Ljava/lang/String;

    .line 2692
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2694
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;->id_:Ljava/lang/Object;

    return-object v0

    .line 2697
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 2533
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey;->access$4100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;

    const-class v2, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;

    .line 2534
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

    .line 2521
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2521
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;

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

    .line 2521
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;

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

    .line 2521
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2521
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;

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

    .line 2521
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2654
    :try_start_0
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;->access$4800()Lcom/google/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2660
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;->mergeFrom(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2656
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2657
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

    .line 2660
    invoke-virtual {p0, v0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;->mergeFrom(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;

    .line 2662
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;
    .locals 1

    .line 2623
    instance-of v0, p1, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;

    if-eqz v0, :cond_0

    .line 2624
    check-cast p1, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;

    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;->mergeFrom(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;

    move-result-object p1

    return-object p1

    .line 2626
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;
    .locals 1

    .line 2632
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;->getDefaultInstance()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2633
    :cond_0
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2634
    invoke-static {p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;->access$4600(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;->id_:Ljava/lang/Object;

    .line 2635
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;->onChanged()V

    .line 2637
    :cond_1
    invoke-static {p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;->access$4700(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;

    .line 2638
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2521
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2521
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2521
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;
    .locals 0

    .line 2750
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2521
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2521
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;
    .locals 0

    .line 2597
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;

    return-object p1
.end method

.method public setId(Ljava/lang/String;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 2711
    iput-object p1, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;->id_:Ljava/lang/Object;

    .line 2712
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 2708
    throw p1
.end method

.method public setIdBytes(Lcom/google/protobuf/ByteString;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 2735
    invoke-static {p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;->access$4900(Lcom/google/protobuf/ByteString;)V

    .line 2737
    iput-object p1, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;->id_:Ljava/lang/Object;

    .line 2738
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 2733
    throw p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2521
    invoke-virtual {p0, p1, p2, p3}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2521
    invoke-virtual {p0, p1, p2, p3}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;
    .locals 0

    .line 2613
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2521
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2521
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;
    .locals 0

    .line 2744
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;

    return-object p1
.end method
