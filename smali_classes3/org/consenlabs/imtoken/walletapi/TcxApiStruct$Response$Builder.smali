.class public final Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "TcxApiStruct.java"

# interfaces
.implements Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$ResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;",
        ">;",
        "Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$ResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private error_:Ljava/lang/Object;

.field private isSuccess_:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1152
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 1315
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;->error_:Ljava/lang/Object;

    .line 1153
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 1158
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 1315
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;->error_:Ljava/lang/Object;

    .line 1159
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$1;)V
    .locals 0

    .line 1134
    invoke-direct {p0, p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$1;)V
    .locals 0

    .line 1134
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1140
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct;->access$1200()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 1163
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->access$1600()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1134
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1134
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;
    .locals 0

    .line 1235
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 1134
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;->build()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1134
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;->build()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;
    .locals 2

    .line 1189
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;->buildPartial()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;

    move-result-object v0

    .line 1190
    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 1191
    :cond_0
    invoke-static {v0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 1134
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;->buildPartial()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1134
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;->buildPartial()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;
    .locals 2

    .line 1198
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$1;)V

    .line 1199
    iget-boolean v1, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;->isSuccess_:Z

    invoke-static {v0, v1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->access$1802(Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;Z)Z

    .line 1200
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;->error_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->access$1902(Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1201
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1134
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;->clear()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 1134
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;->clear()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1134
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;->clear()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1134
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;->clear()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;
    .locals 1

    .line 1168
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 1169
    iput-boolean v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;->isSuccess_:Z

    const-string v0, ""

    .line 1171
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;->error_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearError()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;
    .locals 1

    .line 1370
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->getDefaultInstance()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;

    move-result-object v0

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->getError()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;->error_:Ljava/lang/Object;

    .line 1371
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1134
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1134
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;
    .locals 0

    .line 1218
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;

    return-object p1
.end method

.method public clearIsSuccess()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1310
    iput-boolean v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;->isSuccess_:Z

    .line 1311
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1134
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1134
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1134
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;
    .locals 0

    .line 1223
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1134
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;->clone()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 1134
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;->clone()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 1134
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;->clone()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1134
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;->clone()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1134
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;->clone()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;

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

    .line 1134
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;->clone()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;
    .locals 1

    .line 1207
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1134
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1134
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;
    .locals 1

    .line 1184
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->getDefaultInstance()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1179
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct;->access$1200()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getError()Ljava/lang/String;
    .locals 2

    .line 1321
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;->error_:Ljava/lang/Object;

    .line 1322
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1323
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1325
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1326
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;->error_:Ljava/lang/Object;

    return-object v0

    .line 1329
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getErrorBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1338
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;->error_:Ljava/lang/Object;

    .line 1339
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1340
    check-cast v0, Ljava/lang/String;

    .line 1341
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1343
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;->error_:Ljava/lang/Object;

    return-object v0

    .line 1346
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getIsSuccess()Z
    .locals 1

    .line 1291
    iget-boolean v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;->isSuccess_:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1146
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct;->access$1300()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;

    const-class v2, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;

    .line 1147
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

    .line 1134
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1134
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;

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

    .line 1134
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;

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

    .line 1134
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1134
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;

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

    .line 1134
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1273
    :try_start_0
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->access$2100()Lcom/google/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 1279
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;->mergeFrom(Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1275
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1276
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

    .line 1279
    invoke-virtual {p0, v0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;->mergeFrom(Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;

    .line 1281
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;
    .locals 1

    .line 1239
    instance-of v0, p1, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;

    if-eqz v0, :cond_0

    .line 1240
    check-cast p1, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;

    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;->mergeFrom(Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;

    move-result-object p1

    return-object p1

    .line 1242
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;
    .locals 1

    .line 1248
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->getDefaultInstance()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 1249
    :cond_0
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->getIsSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1250
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->getIsSuccess()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;->setIsSuccess(Z)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;

    .line 1252
    :cond_1
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->getError()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1253
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->access$1900(Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;->error_:Ljava/lang/Object;

    .line 1254
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;->onChanged()V

    .line 1256
    :cond_2
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->access$2000(Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;

    .line 1257
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1134
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1134
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1134
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;
    .locals 0

    .line 1399
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;

    return-object p1
.end method

.method public setError(Ljava/lang/String;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 1360
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;->error_:Ljava/lang/Object;

    .line 1361
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 1357
    throw p1
.end method

.method public setErrorBytes(Lcom/google/protobuf/ByteString;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 1384
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->access$2200(Lcom/google/protobuf/ByteString;)V

    .line 1386
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;->error_:Ljava/lang/Object;

    .line 1387
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 1382
    throw p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1134
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1134
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;
    .locals 0

    .line 1213
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;

    return-object p1
.end method

.method public setIsSuccess(Z)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;
    .locals 0

    .line 1300
    iput-boolean p1, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;->isSuccess_:Z

    .line 1301
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1134
    invoke-virtual {p0, p1, p2, p3}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1134
    invoke-virtual {p0, p1, p2, p3}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;
    .locals 0

    .line 1229
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1134
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1134
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;
    .locals 0

    .line 1393
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;

    return-object p1
.end method
