.class public final Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "CacheDerivedKey.java"

# interfaces
.implements Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResultOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;",
        ">;",
        "Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResultOrBuilder;"
    }
.end annotation


# instance fields
.field private enableDerivedKey_:Z

.field private id_:Ljava/lang/Object;

.field private mode_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1854
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 1994
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->id_:Ljava/lang/Object;

    .line 2100
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->mode_:Ljava/lang/Object;

    .line 1855
    invoke-direct {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 1860
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 1994
    iput-object p1, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->id_:Ljava/lang/Object;

    .line 2100
    iput-object p1, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->mode_:Ljava/lang/Object;

    .line 1861
    invoke-direct {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$1;)V
    .locals 0

    .line 1836
    invoke-direct {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$1;)V
    .locals 0

    .line 1836
    invoke-direct {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1842
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey;->access$2600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 1865
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->access$3000()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1836
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1836
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;
    .locals 0

    .line 1940
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 1836
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->build()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1836
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->build()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;
    .locals 2

    .line 1893
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->buildPartial()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;

    move-result-object v0

    .line 1894
    invoke-virtual {v0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 1895
    :cond_0
    invoke-static {v0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 1836
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->buildPartial()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1836
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->buildPartial()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;
    .locals 2

    .line 1902
    new-instance v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$1;)V

    .line 1903
    iget-object v1, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->id_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->access$3202(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1904
    iget-boolean v1, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->enableDerivedKey_:Z

    invoke-static {v0, v1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->access$3302(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;Z)Z

    .line 1905
    iget-object v1, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->mode_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->access$3402(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1906
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1836
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->clear()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 1836
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->clear()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1836
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->clear()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1836
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->clear()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;
    .locals 2

    .line 1870
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    .line 1871
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->id_:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 1873
    iput-boolean v1, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->enableDerivedKey_:Z

    .line 1875
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->mode_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearEnableDerivedKey()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 2095
    iput-boolean v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->enableDerivedKey_:Z

    .line 2096
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1836
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1836
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;
    .locals 0

    .line 1923
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;

    return-object p1
.end method

.method public clearId()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;
    .locals 1

    .line 2049
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->getDefaultInstance()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;

    move-result-object v0

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->id_:Ljava/lang/Object;

    .line 2050
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMode()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;
    .locals 1

    .line 2155
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->getDefaultInstance()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;

    move-result-object v0

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->getMode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->mode_:Ljava/lang/Object;

    .line 2156
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1836
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1836
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1836
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;
    .locals 0

    .line 1928
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1836
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->clone()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 1836
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->clone()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 1836
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->clone()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1836
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->clone()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1836
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->clone()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;

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

    .line 1836
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->clone()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;
    .locals 1

    .line 1912
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1836
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1836
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;
    .locals 1

    .line 1888
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->getDefaultInstance()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1883
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey;->access$2600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getEnableDerivedKey()Z
    .locals 1

    .line 2076
    iget-boolean v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->enableDerivedKey_:Z

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .line 2000
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->id_:Ljava/lang/Object;

    .line 2001
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2002
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2004
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2005
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->id_:Ljava/lang/Object;

    return-object v0

    .line 2008
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 2017
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->id_:Ljava/lang/Object;

    .line 2018
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2019
    check-cast v0, Ljava/lang/String;

    .line 2020
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2022
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->id_:Ljava/lang/Object;

    return-object v0

    .line 2025
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getMode()Ljava/lang/String;
    .locals 2

    .line 2106
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->mode_:Ljava/lang/Object;

    .line 2107
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2108
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2110
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2111
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->mode_:Ljava/lang/Object;

    return-object v0

    .line 2114
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getModeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 2123
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->mode_:Ljava/lang/Object;

    .line 2124
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2125
    check-cast v0, Ljava/lang/String;

    .line 2126
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2128
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->mode_:Ljava/lang/Object;

    return-object v0

    .line 2131
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1848
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey;->access$2700()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;

    const-class v2, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;

    .line 1849
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

    .line 1836
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1836
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;

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

    .line 1836
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;

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

    .line 1836
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1836
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;

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

    .line 1836
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1982
    :try_start_0
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->access$3600()Lcom/google/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 1988
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->mergeFrom(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1984
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1985
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

    .line 1988
    invoke-virtual {p0, v0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->mergeFrom(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;

    .line 1990
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;
    .locals 1

    .line 1944
    instance-of v0, p1, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;

    if-eqz v0, :cond_0

    .line 1945
    check-cast p1, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;

    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->mergeFrom(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;

    move-result-object p1

    return-object p1

    .line 1947
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;
    .locals 1

    .line 1953
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->getDefaultInstance()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 1954
    :cond_0
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1955
    invoke-static {p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->access$3200(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->id_:Ljava/lang/Object;

    .line 1956
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->onChanged()V

    .line 1958
    :cond_1
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->getEnableDerivedKey()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1959
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->getEnableDerivedKey()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->setEnableDerivedKey(Z)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;

    .line 1961
    :cond_2
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->getMode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1962
    invoke-static {p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->access$3400(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->mode_:Ljava/lang/Object;

    .line 1963
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->onChanged()V

    .line 1965
    :cond_3
    invoke-static {p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->access$3500(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;

    .line 1966
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1836
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1836
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1836
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;
    .locals 0

    .line 2184
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;

    return-object p1
.end method

.method public setEnableDerivedKey(Z)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;
    .locals 0

    .line 2085
    iput-boolean p1, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->enableDerivedKey_:Z

    .line 2086
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1836
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1836
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;
    .locals 0

    .line 1918
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;

    return-object p1
.end method

.method public setId(Ljava/lang/String;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 2039
    iput-object p1, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->id_:Ljava/lang/Object;

    .line 2040
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 2036
    throw p1
.end method

.method public setIdBytes(Lcom/google/protobuf/ByteString;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 2063
    invoke-static {p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->access$3700(Lcom/google/protobuf/ByteString;)V

    .line 2065
    iput-object p1, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->id_:Ljava/lang/Object;

    .line 2066
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 2061
    throw p1
.end method

.method public setMode(Ljava/lang/String;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 2145
    iput-object p1, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->mode_:Ljava/lang/Object;

    .line 2146
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 2142
    throw p1
.end method

.method public setModeBytes(Lcom/google/protobuf/ByteString;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 2169
    invoke-static {p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->access$3800(Lcom/google/protobuf/ByteString;)V

    .line 2171
    iput-object p1, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->mode_:Ljava/lang/Object;

    .line 2172
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 2167
    throw p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1836
    invoke-virtual {p0, p1, p2, p3}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1836
    invoke-virtual {p0, p1, p2, p3}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;
    .locals 0

    .line 1934
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1836
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1836
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;
    .locals 0

    .line 2178
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;

    return-object p1
.end method
