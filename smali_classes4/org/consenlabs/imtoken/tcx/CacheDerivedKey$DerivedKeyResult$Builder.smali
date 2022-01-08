.class public final Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "CacheDerivedKey.java"

# interfaces
.implements Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResultOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;",
        ">;",
        "Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResultOrBuilder;"
    }
.end annotation


# instance fields
.field private derivedKey_:Ljava/lang/Object;

.field private id_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1107
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 1241
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;->id_:Ljava/lang/Object;

    .line 1317
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;->derivedKey_:Ljava/lang/Object;

    .line 1108
    invoke-direct {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 1113
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 1241
    iput-object p1, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;->id_:Ljava/lang/Object;

    .line 1317
    iput-object p1, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;->derivedKey_:Ljava/lang/Object;

    .line 1114
    invoke-direct {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$1;)V
    .locals 0

    .line 1089
    invoke-direct {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$1;)V
    .locals 0

    .line 1089
    invoke-direct {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1095
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey;->access$1300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 1118
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->access$1700()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1089
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1089
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;
    .locals 0

    .line 1190
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 1089
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;->build()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1089
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;->build()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;
    .locals 2

    .line 1144
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;->buildPartial()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;

    move-result-object v0

    .line 1145
    invoke-virtual {v0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 1146
    :cond_0
    invoke-static {v0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 1089
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;->buildPartial()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1089
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;->buildPartial()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;
    .locals 2

    .line 1153
    new-instance v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$1;)V

    .line 1154
    iget-object v1, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;->id_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->access$1902(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1155
    iget-object v1, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;->derivedKey_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->access$2002(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1156
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1089
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;->clear()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 1089
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;->clear()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1089
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;->clear()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1089
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;->clear()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;
    .locals 1

    .line 1123
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    .line 1124
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;->id_:Ljava/lang/Object;

    .line 1126
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;->derivedKey_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearDerivedKey()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;
    .locals 1

    .line 1372
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->getDefaultInstance()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;

    move-result-object v0

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->getDerivedKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;->derivedKey_:Ljava/lang/Object;

    .line 1373
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1089
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1089
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;
    .locals 0

    .line 1173
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;

    return-object p1
.end method

.method public clearId()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;
    .locals 1

    .line 1296
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->getDefaultInstance()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;

    move-result-object v0

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;->id_:Ljava/lang/Object;

    .line 1297
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1089
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1089
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1089
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;
    .locals 0

    .line 1178
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1089
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;->clone()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 1089
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;->clone()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 1089
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;->clone()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1089
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;->clone()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1089
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;->clone()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;

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

    .line 1089
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;->clone()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;
    .locals 1

    .line 1162
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1089
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1089
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;
    .locals 1

    .line 1139
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->getDefaultInstance()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;

    move-result-object v0

    return-object v0
.end method

.method public getDerivedKey()Ljava/lang/String;
    .locals 2

    .line 1323
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;->derivedKey_:Ljava/lang/Object;

    .line 1324
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1325
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1327
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1328
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;->derivedKey_:Ljava/lang/Object;

    return-object v0

    .line 1331
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDerivedKeyBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1340
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;->derivedKey_:Ljava/lang/Object;

    .line 1341
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1342
    check-cast v0, Ljava/lang/String;

    .line 1343
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1345
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;->derivedKey_:Ljava/lang/Object;

    return-object v0

    .line 1348
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1134
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey;->access$1300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .line 1247
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;->id_:Ljava/lang/Object;

    .line 1248
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1249
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1251
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1252
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;->id_:Ljava/lang/Object;

    return-object v0

    .line 1255
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1264
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;->id_:Ljava/lang/Object;

    .line 1265
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1266
    check-cast v0, Ljava/lang/String;

    .line 1267
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1269
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;->id_:Ljava/lang/Object;

    return-object v0

    .line 1272
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1101
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey;->access$1400()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;

    const-class v2, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;

    .line 1102
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

    .line 1089
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1089
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;

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

    .line 1089
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;

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

    .line 1089
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1089
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;

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

    .line 1089
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1229
    :try_start_0
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->access$2200()Lcom/google/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 1235
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;->mergeFrom(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1231
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1232
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

    .line 1235
    invoke-virtual {p0, v0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;->mergeFrom(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;

    .line 1237
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;
    .locals 1

    .line 1194
    instance-of v0, p1, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;

    if-eqz v0, :cond_0

    .line 1195
    check-cast p1, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;

    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;->mergeFrom(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;

    move-result-object p1

    return-object p1

    .line 1197
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;
    .locals 1

    .line 1203
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->getDefaultInstance()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 1204
    :cond_0
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1205
    invoke-static {p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->access$1900(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;->id_:Ljava/lang/Object;

    .line 1206
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;->onChanged()V

    .line 1208
    :cond_1
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->getDerivedKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1209
    invoke-static {p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->access$2000(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;->derivedKey_:Ljava/lang/Object;

    .line 1210
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;->onChanged()V

    .line 1212
    :cond_2
    invoke-static {p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->access$2100(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;

    .line 1213
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1089
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1089
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1089
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;
    .locals 0

    .line 1401
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;

    return-object p1
.end method

.method public setDerivedKey(Ljava/lang/String;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 1362
    iput-object p1, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;->derivedKey_:Ljava/lang/Object;

    .line 1363
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 1359
    throw p1
.end method

.method public setDerivedKeyBytes(Lcom/google/protobuf/ByteString;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 1386
    invoke-static {p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->access$2400(Lcom/google/protobuf/ByteString;)V

    .line 1388
    iput-object p1, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;->derivedKey_:Ljava/lang/Object;

    .line 1389
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 1384
    throw p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1089
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1089
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;
    .locals 0

    .line 1168
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;

    return-object p1
.end method

.method public setId(Ljava/lang/String;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 1286
    iput-object p1, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;->id_:Ljava/lang/Object;

    .line 1287
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 1283
    throw p1
.end method

.method public setIdBytes(Lcom/google/protobuf/ByteString;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 1310
    invoke-static {p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->access$2300(Lcom/google/protobuf/ByteString;)V

    .line 1312
    iput-object p1, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;->id_:Ljava/lang/Object;

    .line 1313
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 1308
    throw p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1089
    invoke-virtual {p0, p1, p2, p3}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1089
    invoke-virtual {p0, p1, p2, p3}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;
    .locals 0

    .line 1184
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1089
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1089
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;
    .locals 0

    .line 1395
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;

    return-object p1
.end method
