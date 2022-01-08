.class public final Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "ImkeyApi.java"

# interfaces
.implements Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;",
        ">;",
        "Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private result_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1761
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 1888
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;->result_:Ljava/lang/Object;

    .line 1762
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 1767
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 1888
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;->result_:Ljava/lang/Object;

    .line 1768
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V
    .locals 0

    .line 1743
    invoke-direct {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V
    .locals 0

    .line 1743
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1749
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->access$2400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 1772
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;->access$2800()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1743
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1743
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;
    .locals 0

    .line 1841
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 1743
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;->build()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1743
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;->build()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;
    .locals 2

    .line 1796
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;->buildPartial()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;

    move-result-object v0

    .line 1797
    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 1798
    :cond_0
    invoke-static {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 1743
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;->buildPartial()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1743
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;->buildPartial()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;
    .locals 2

    .line 1805
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V

    .line 1806
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;->result_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;->access$3002(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1807
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1743
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;->clear()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 1743
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;->clear()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1743
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;->clear()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1743
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;->clear()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;
    .locals 1

    .line 1777
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    .line 1778
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;->result_:Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1743
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1743
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;
    .locals 0

    .line 1824
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1743
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1743
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1743
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;
    .locals 0

    .line 1829
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;

    return-object p1
.end method

.method public clearResult()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;
    .locals 1

    .line 1943
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;->getDefaultInstance()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;

    move-result-object v0

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;->getResult()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;->result_:Ljava/lang/Object;

    .line 1944
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1743
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;->clone()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 1743
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;->clone()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 1743
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;->clone()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1743
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;->clone()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1743
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;->clone()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;

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

    .line 1743
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;->clone()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;
    .locals 1

    .line 1813
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1743
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1743
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;
    .locals 1

    .line 1791
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;->getDefaultInstance()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1786
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->access$2400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 2

    .line 1894
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;->result_:Ljava/lang/Object;

    .line 1895
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1896
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1898
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1899
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;->result_:Ljava/lang/Object;

    return-object v0

    .line 1902
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getResultBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1911
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;->result_:Ljava/lang/Object;

    .line 1912
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1913
    check-cast v0, Ljava/lang/String;

    .line 1914
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1916
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;->result_:Ljava/lang/Object;

    return-object v0

    .line 1919
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1755
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->access$2500()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;

    const-class v2, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;

    .line 1756
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

    .line 1743
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1743
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;

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

    .line 1743
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;

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

    .line 1743
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1743
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;

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

    .line 1743
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1876
    :try_start_0
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;->access$3200()Lcom/google/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 1882
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;->mergeFrom(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1878
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1879
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

    .line 1882
    invoke-virtual {p0, v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;->mergeFrom(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;

    .line 1884
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;
    .locals 1

    .line 1845
    instance-of v0, p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;

    if-eqz v0, :cond_0

    .line 1846
    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;

    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;->mergeFrom(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;

    move-result-object p1

    return-object p1

    .line 1848
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;
    .locals 1

    .line 1854
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;->getDefaultInstance()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 1855
    :cond_0
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;->getResult()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1856
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;->access$3000(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;->result_:Ljava/lang/Object;

    .line 1857
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;->onChanged()V

    .line 1859
    :cond_1
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;->access$3100(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;

    .line 1860
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1743
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1743
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1743
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;
    .locals 0

    .line 1972
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1743
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1743
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;
    .locals 0

    .line 1819
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1743
    invoke-virtual {p0, p1, p2, p3}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1743
    invoke-virtual {p0, p1, p2, p3}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;
    .locals 0

    .line 1835
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;

    return-object p1
.end method

.method public setResult(Ljava/lang/String;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 1933
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;->result_:Ljava/lang/Object;

    .line 1934
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 1930
    throw p1
.end method

.method public setResultBytes(Lcom/google/protobuf/ByteString;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 1957
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;->access$3300(Lcom/google/protobuf/ByteString;)V

    .line 1959
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;->result_:Ljava/lang/Object;

    .line 1960
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 1955
    throw p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1743
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1743
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;
    .locals 0

    .line 1966
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;

    return-object p1
.end method
