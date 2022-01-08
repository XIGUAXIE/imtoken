.class public final Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "Api.java"

# interfaces
.implements Lorg/consenlabs/imtoken/tcx/Api$ResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/consenlabs/imtoken/tcx/Api$Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;",
        ">;",
        "Lorg/consenlabs/imtoken/tcx/Api$ResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private error_:Ljava/lang/Object;

.field private isSuccess_:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1151
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 1314
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;->error_:Ljava/lang/Object;

    .line 1152
    invoke-direct {p0}, Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 1157
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 1314
    iput-object p1, p0, Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;->error_:Ljava/lang/Object;

    .line 1158
    invoke-direct {p0}, Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lorg/consenlabs/imtoken/tcx/Api$1;)V
    .locals 0

    .line 1133
    invoke-direct {p0, p1}, Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/consenlabs/imtoken/tcx/Api$1;)V
    .locals 0

    .line 1133
    invoke-direct {p0}, Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1139
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/Api;->access$1200()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 1162
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/Api$Response;->access$1600()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1133
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1133
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;
    .locals 0

    .line 1234
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 1133
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;->build()Lorg/consenlabs/imtoken/tcx/Api$Response;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1133
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;->build()Lorg/consenlabs/imtoken/tcx/Api$Response;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/consenlabs/imtoken/tcx/Api$Response;
    .locals 2

    .line 1188
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;->buildPartial()Lorg/consenlabs/imtoken/tcx/Api$Response;

    move-result-object v0

    .line 1189
    invoke-virtual {v0}, Lorg/consenlabs/imtoken/tcx/Api$Response;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 1190
    :cond_0
    invoke-static {v0}, Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 1133
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;->buildPartial()Lorg/consenlabs/imtoken/tcx/Api$Response;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1133
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;->buildPartial()Lorg/consenlabs/imtoken/tcx/Api$Response;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lorg/consenlabs/imtoken/tcx/Api$Response;
    .locals 2

    .line 1197
    new-instance v0, Lorg/consenlabs/imtoken/tcx/Api$Response;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/consenlabs/imtoken/tcx/Api$Response;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lorg/consenlabs/imtoken/tcx/Api$1;)V

    .line 1198
    iget-boolean v1, p0, Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;->isSuccess_:Z

    invoke-static {v0, v1}, Lorg/consenlabs/imtoken/tcx/Api$Response;->access$1802(Lorg/consenlabs/imtoken/tcx/Api$Response;Z)Z

    .line 1199
    iget-object v1, p0, Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;->error_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/consenlabs/imtoken/tcx/Api$Response;->access$1902(Lorg/consenlabs/imtoken/tcx/Api$Response;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1200
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1133
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;->clear()Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 1133
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;->clear()Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1133
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;->clear()Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1133
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;->clear()Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;
    .locals 1

    .line 1167
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 1168
    iput-boolean v0, p0, Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;->isSuccess_:Z

    const-string v0, ""

    .line 1170
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;->error_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearError()Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;
    .locals 1

    .line 1369
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/Api$Response;->getDefaultInstance()Lorg/consenlabs/imtoken/tcx/Api$Response;

    move-result-object v0

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/tcx/Api$Response;->getError()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;->error_:Ljava/lang/Object;

    .line 1370
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1133
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1133
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;
    .locals 0

    .line 1217
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;

    return-object p1
.end method

.method public clearIsSuccess()Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1309
    iput-boolean v0, p0, Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;->isSuccess_:Z

    .line 1310
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1133
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1133
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1133
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;
    .locals 0

    .line 1222
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1133
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;->clone()Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 1133
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;->clone()Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 1133
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;->clone()Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1133
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;->clone()Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1133
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;->clone()Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;

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

    .line 1133
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;->clone()Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;
    .locals 1

    .line 1206
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1133
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/tcx/Api$Response;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1133
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/tcx/Api$Response;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/consenlabs/imtoken/tcx/Api$Response;
    .locals 1

    .line 1183
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/Api$Response;->getDefaultInstance()Lorg/consenlabs/imtoken/tcx/Api$Response;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1178
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/Api;->access$1200()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getError()Ljava/lang/String;
    .locals 2

    .line 1320
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;->error_:Ljava/lang/Object;

    .line 1321
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1322
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1324
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1325
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;->error_:Ljava/lang/Object;

    return-object v0

    .line 1328
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getErrorBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1337
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;->error_:Ljava/lang/Object;

    .line 1338
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1339
    check-cast v0, Ljava/lang/String;

    .line 1340
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1342
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;->error_:Ljava/lang/Object;

    return-object v0

    .line 1345
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getIsSuccess()Z
    .locals 1

    .line 1290
    iget-boolean v0, p0, Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;->isSuccess_:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1145
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/Api;->access$1300()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/consenlabs/imtoken/tcx/Api$Response;

    const-class v2, Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;

    .line 1146
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

    .line 1133
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1133
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;

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

    .line 1133
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;

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

    .line 1133
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1133
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;

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

    .line 1133
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1272
    :try_start_0
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/Api$Response;->access$2100()Lcom/google/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/tcx/Api$Response;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 1278
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;->mergeFrom(Lorg/consenlabs/imtoken/tcx/Api$Response;)Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1274
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lorg/consenlabs/imtoken/tcx/Api$Response;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1275
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

    .line 1278
    invoke-virtual {p0, v0}, Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;->mergeFrom(Lorg/consenlabs/imtoken/tcx/Api$Response;)Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;

    .line 1280
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;
    .locals 1

    .line 1238
    instance-of v0, p1, Lorg/consenlabs/imtoken/tcx/Api$Response;

    if-eqz v0, :cond_0

    .line 1239
    check-cast p1, Lorg/consenlabs/imtoken/tcx/Api$Response;

    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;->mergeFrom(Lorg/consenlabs/imtoken/tcx/Api$Response;)Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;

    move-result-object p1

    return-object p1

    .line 1241
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lorg/consenlabs/imtoken/tcx/Api$Response;)Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;
    .locals 1

    .line 1247
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/Api$Response;->getDefaultInstance()Lorg/consenlabs/imtoken/tcx/Api$Response;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 1248
    :cond_0
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/tcx/Api$Response;->getIsSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1249
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/tcx/Api$Response;->getIsSuccess()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;->setIsSuccess(Z)Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;

    .line 1251
    :cond_1
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/tcx/Api$Response;->getError()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1252
    invoke-static {p1}, Lorg/consenlabs/imtoken/tcx/Api$Response;->access$1900(Lorg/consenlabs/imtoken/tcx/Api$Response;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;->error_:Ljava/lang/Object;

    .line 1253
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;->onChanged()V

    .line 1255
    :cond_2
    invoke-static {p1}, Lorg/consenlabs/imtoken/tcx/Api$Response;->access$2000(Lorg/consenlabs/imtoken/tcx/Api$Response;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;

    .line 1256
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1133
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1133
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1133
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;
    .locals 0

    .line 1398
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;

    return-object p1
.end method

.method public setError(Ljava/lang/String;)Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 1359
    iput-object p1, p0, Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;->error_:Ljava/lang/Object;

    .line 1360
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 1356
    throw p1
.end method

.method public setErrorBytes(Lcom/google/protobuf/ByteString;)Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 1383
    invoke-static {p1}, Lorg/consenlabs/imtoken/tcx/Api$Response;->access$2200(Lcom/google/protobuf/ByteString;)V

    .line 1385
    iput-object p1, p0, Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;->error_:Ljava/lang/Object;

    .line 1386
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 1381
    throw p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1133
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1133
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;
    .locals 0

    .line 1212
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;

    return-object p1
.end method

.method public setIsSuccess(Z)Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;
    .locals 0

    .line 1299
    iput-boolean p1, p0, Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;->isSuccess_:Z

    .line 1300
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1133
    invoke-virtual {p0, p1, p2, p3}, Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1133
    invoke-virtual {p0, p1, p2, p3}, Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;
    .locals 0

    .line 1228
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1133
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1133
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;
    .locals 0

    .line 1392
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;

    return-object p1
.end method
