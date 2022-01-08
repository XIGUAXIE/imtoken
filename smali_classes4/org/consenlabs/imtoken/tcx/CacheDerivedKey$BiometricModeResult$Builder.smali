.class public final Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "CacheDerivedKey.java"

# interfaces
.implements Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResultOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;",
        ">;",
        "Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResultOrBuilder;"
    }
.end annotation


# instance fields
.field private mode_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3105
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 3232
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;->mode_:Ljava/lang/Object;

    .line 3106
    invoke-direct {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 3111
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 3232
    iput-object p1, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;->mode_:Ljava/lang/Object;

    .line 3112
    invoke-direct {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$1;)V
    .locals 0

    .line 3087
    invoke-direct {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$1;)V
    .locals 0

    .line 3087
    invoke-direct {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 3093
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey;->access$5100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 3116
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;->access$5500()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3087
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3087
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;
    .locals 0

    .line 3185
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 3087
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;->build()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3087
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;->build()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;
    .locals 2

    .line 3140
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;->buildPartial()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;

    move-result-object v0

    .line 3141
    invoke-virtual {v0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3142
    :cond_0
    invoke-static {v0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 3087
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;->buildPartial()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3087
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;->buildPartial()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;
    .locals 2

    .line 3149
    new-instance v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$1;)V

    .line 3150
    iget-object v1, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;->mode_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;->access$5702(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3151
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 3087
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;->clear()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 3087
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;->clear()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3087
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;->clear()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3087
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;->clear()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;
    .locals 1

    .line 3121
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    .line 3122
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;->mode_:Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3087
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3087
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;
    .locals 0

    .line 3168
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;

    return-object p1
.end method

.method public clearMode()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;
    .locals 1

    .line 3287
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;->getDefaultInstance()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;

    move-result-object v0

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;->getMode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;->mode_:Ljava/lang/Object;

    .line 3288
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 3087
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3087
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3087
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;
    .locals 0

    .line 3173
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 3087
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;->clone()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 3087
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;->clone()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 3087
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;->clone()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3087
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;->clone()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3087
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;->clone()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;

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

    .line 3087
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;->clone()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;
    .locals 1

    .line 3157
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 3087
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3087
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;
    .locals 1

    .line 3135
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;->getDefaultInstance()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 3130
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey;->access$5100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getMode()Ljava/lang/String;
    .locals 2

    .line 3238
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;->mode_:Ljava/lang/Object;

    .line 3239
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3240
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3242
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3243
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;->mode_:Ljava/lang/Object;

    return-object v0

    .line 3246
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getModeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 3255
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;->mode_:Ljava/lang/Object;

    .line 3256
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3257
    check-cast v0, Ljava/lang/String;

    .line 3258
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3260
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;->mode_:Ljava/lang/Object;

    return-object v0

    .line 3263
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 3099
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey;->access$5200()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;

    const-class v2, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;

    .line 3100
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

    .line 3087
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 3087
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;

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

    .line 3087
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;

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

    .line 3087
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3087
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;

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

    .line 3087
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3220
    :try_start_0
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;->access$5900()Lcom/google/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 3226
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;->mergeFrom(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3222
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3223
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

    .line 3226
    invoke-virtual {p0, v0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;->mergeFrom(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;

    .line 3228
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;
    .locals 1

    .line 3189
    instance-of v0, p1, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;

    if-eqz v0, :cond_0

    .line 3190
    check-cast p1, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;

    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;->mergeFrom(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;

    move-result-object p1

    return-object p1

    .line 3192
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;
    .locals 1

    .line 3198
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;->getDefaultInstance()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 3199
    :cond_0
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;->getMode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3200
    invoke-static {p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;->access$5700(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;->mode_:Ljava/lang/Object;

    .line 3201
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;->onChanged()V

    .line 3203
    :cond_1
    invoke-static {p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;->access$5800(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;

    .line 3204
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 3087
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3087
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3087
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;
    .locals 0

    .line 3316
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3087
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3087
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;
    .locals 0

    .line 3163
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;

    return-object p1
.end method

.method public setMode(Ljava/lang/String;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 3277
    iput-object p1, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;->mode_:Ljava/lang/Object;

    .line 3278
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 3274
    throw p1
.end method

.method public setModeBytes(Lcom/google/protobuf/ByteString;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 3301
    invoke-static {p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;->access$6000(Lcom/google/protobuf/ByteString;)V

    .line 3303
    iput-object p1, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;->mode_:Ljava/lang/Object;

    .line 3304
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 3299
    throw p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3087
    invoke-virtual {p0, p1, p2, p3}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3087
    invoke-virtual {p0, p1, p2, p3}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;
    .locals 0

    .line 3179
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3087
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3087
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;
    .locals 0

    .line 3310
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;

    return-object p1
.end method
