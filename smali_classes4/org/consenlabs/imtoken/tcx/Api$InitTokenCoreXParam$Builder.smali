.class public final Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "Api.java"

# interfaces
.implements Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParamOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;",
        ">;",
        "Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParamOrBuilder;"
    }
.end annotation


# instance fields
.field private fileDir_:Ljava/lang/Object;

.field private isDebug_:Z

.field private xpubCommonIv_:Ljava/lang/Object;

.field private xpubCommonKey_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1926
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 2073
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->fileDir_:Ljava/lang/Object;

    .line 2149
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->xpubCommonKey_:Ljava/lang/Object;

    .line 2225
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->xpubCommonIv_:Ljava/lang/Object;

    .line 1927
    invoke-direct {p0}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 1932
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 2073
    iput-object p1, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->fileDir_:Ljava/lang/Object;

    .line 2149
    iput-object p1, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->xpubCommonKey_:Ljava/lang/Object;

    .line 2225
    iput-object p1, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->xpubCommonIv_:Ljava/lang/Object;

    .line 1933
    invoke-direct {p0}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lorg/consenlabs/imtoken/tcx/Api$1;)V
    .locals 0

    .line 1908
    invoke-direct {p0, p1}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/consenlabs/imtoken/tcx/Api$1;)V
    .locals 0

    .line 1908
    invoke-direct {p0}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1914
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/Api;->access$2400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 1937
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->access$2800()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1908
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1908
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;
    .locals 0

    .line 2015
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 1908
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->build()Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1908
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->build()Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;
    .locals 2

    .line 1967
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->buildPartial()Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;

    move-result-object v0

    .line 1968
    invoke-virtual {v0}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 1969
    :cond_0
    invoke-static {v0}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 1908
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->buildPartial()Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1908
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->buildPartial()Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;
    .locals 2

    .line 1976
    new-instance v0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lorg/consenlabs/imtoken/tcx/Api$1;)V

    .line 1977
    iget-object v1, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->fileDir_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->access$3002(Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1978
    iget-object v1, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->xpubCommonKey_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->access$3102(Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1979
    iget-object v1, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->xpubCommonIv_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->access$3202(Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1980
    iget-boolean v1, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->isDebug_:Z

    invoke-static {v0, v1}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->access$3302(Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;Z)Z

    .line 1981
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1908
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->clear()Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 1908
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->clear()Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1908
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->clear()Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1908
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->clear()Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;
    .locals 1

    .line 1942
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    .line 1943
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->fileDir_:Ljava/lang/Object;

    .line 1945
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->xpubCommonKey_:Ljava/lang/Object;

    .line 1947
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->xpubCommonIv_:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 1949
    iput-boolean v0, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->isDebug_:Z

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1908
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1908
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;
    .locals 0

    .line 1998
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;

    return-object p1
.end method

.method public clearFileDir()Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;
    .locals 1

    .line 2128
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->getDefaultInstance()Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;

    move-result-object v0

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->getFileDir()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->fileDir_:Ljava/lang/Object;

    .line 2129
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->onChanged()V

    return-object p0
.end method

.method public clearIsDebug()Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 2326
    iput-boolean v0, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->isDebug_:Z

    .line 2327
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1908
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1908
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1908
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;
    .locals 0

    .line 2003
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;

    return-object p1
.end method

.method public clearXpubCommonIv()Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;
    .locals 1

    .line 2280
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->getDefaultInstance()Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;

    move-result-object v0

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->getXpubCommonIv()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->xpubCommonIv_:Ljava/lang/Object;

    .line 2281
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->onChanged()V

    return-object p0
.end method

.method public clearXpubCommonKey()Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;
    .locals 1

    .line 2204
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->getDefaultInstance()Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;

    move-result-object v0

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->getXpubCommonKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->xpubCommonKey_:Ljava/lang/Object;

    .line 2205
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1908
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->clone()Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 1908
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->clone()Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 1908
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->clone()Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1908
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->clone()Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1908
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->clone()Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;

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

    .line 1908
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->clone()Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;
    .locals 1

    .line 1987
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1908
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1908
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;
    .locals 1

    .line 1962
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->getDefaultInstance()Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1957
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/Api;->access$2400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getFileDir()Ljava/lang/String;
    .locals 2

    .line 2079
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->fileDir_:Ljava/lang/Object;

    .line 2080
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2081
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2083
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2084
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->fileDir_:Ljava/lang/Object;

    return-object v0

    .line 2087
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFileDirBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 2096
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->fileDir_:Ljava/lang/Object;

    .line 2097
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2098
    check-cast v0, Ljava/lang/String;

    .line 2099
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2101
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->fileDir_:Ljava/lang/Object;

    return-object v0

    .line 2104
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getIsDebug()Z
    .locals 1

    .line 2307
    iget-boolean v0, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->isDebug_:Z

    return v0
.end method

.method public getXpubCommonIv()Ljava/lang/String;
    .locals 2

    .line 2231
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->xpubCommonIv_:Ljava/lang/Object;

    .line 2232
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2233
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2235
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2236
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->xpubCommonIv_:Ljava/lang/Object;

    return-object v0

    .line 2239
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getXpubCommonIvBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 2248
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->xpubCommonIv_:Ljava/lang/Object;

    .line 2249
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2250
    check-cast v0, Ljava/lang/String;

    .line 2251
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2253
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->xpubCommonIv_:Ljava/lang/Object;

    return-object v0

    .line 2256
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getXpubCommonKey()Ljava/lang/String;
    .locals 2

    .line 2155
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->xpubCommonKey_:Ljava/lang/Object;

    .line 2156
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2157
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2159
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2160
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->xpubCommonKey_:Ljava/lang/Object;

    return-object v0

    .line 2163
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getXpubCommonKeyBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 2172
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->xpubCommonKey_:Ljava/lang/Object;

    .line 2173
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2174
    check-cast v0, Ljava/lang/String;

    .line 2175
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2177
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->xpubCommonKey_:Ljava/lang/Object;

    return-object v0

    .line 2180
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1920
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/Api;->access$2500()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;

    const-class v2, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;

    .line 1921
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

    .line 1908
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1908
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;

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

    .line 1908
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;

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

    .line 1908
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1908
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;

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

    .line 1908
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2061
    :try_start_0
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->access$3500()Lcom/google/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2067
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->mergeFrom(Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;)Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2063
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2064
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

    .line 2067
    invoke-virtual {p0, v0}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->mergeFrom(Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;)Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;

    .line 2069
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;
    .locals 1

    .line 2019
    instance-of v0, p1, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;

    if-eqz v0, :cond_0

    .line 2020
    check-cast p1, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;

    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->mergeFrom(Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;)Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;

    move-result-object p1

    return-object p1

    .line 2022
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;)Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;
    .locals 1

    .line 2028
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->getDefaultInstance()Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2029
    :cond_0
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->getFileDir()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2030
    invoke-static {p1}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->access$3000(Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->fileDir_:Ljava/lang/Object;

    .line 2031
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->onChanged()V

    .line 2033
    :cond_1
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->getXpubCommonKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2034
    invoke-static {p1}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->access$3100(Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->xpubCommonKey_:Ljava/lang/Object;

    .line 2035
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->onChanged()V

    .line 2037
    :cond_2
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->getXpubCommonIv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2038
    invoke-static {p1}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->access$3200(Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->xpubCommonIv_:Ljava/lang/Object;

    .line 2039
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->onChanged()V

    .line 2041
    :cond_3
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->getIsDebug()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2042
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->getIsDebug()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->setIsDebug(Z)Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;

    .line 2044
    :cond_4
    invoke-static {p1}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->access$3400(Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;

    .line 2045
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1908
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1908
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1908
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;
    .locals 0

    .line 2339
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1908
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1908
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;
    .locals 0

    .line 1993
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;

    return-object p1
.end method

.method public setFileDir(Ljava/lang/String;)Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 2118
    iput-object p1, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->fileDir_:Ljava/lang/Object;

    .line 2119
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 2115
    throw p1
.end method

.method public setFileDirBytes(Lcom/google/protobuf/ByteString;)Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 2142
    invoke-static {p1}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->access$3600(Lcom/google/protobuf/ByteString;)V

    .line 2144
    iput-object p1, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->fileDir_:Ljava/lang/Object;

    .line 2145
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 2140
    throw p1
.end method

.method public setIsDebug(Z)Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;
    .locals 0

    .line 2316
    iput-boolean p1, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->isDebug_:Z

    .line 2317
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1908
    invoke-virtual {p0, p1, p2, p3}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1908
    invoke-virtual {p0, p1, p2, p3}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;
    .locals 0

    .line 2009
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1908
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1908
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;
    .locals 0

    .line 2333
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;

    return-object p1
.end method

.method public setXpubCommonIv(Ljava/lang/String;)Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 2270
    iput-object p1, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->xpubCommonIv_:Ljava/lang/Object;

    .line 2271
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 2267
    throw p1
.end method

.method public setXpubCommonIvBytes(Lcom/google/protobuf/ByteString;)Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 2294
    invoke-static {p1}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->access$3800(Lcom/google/protobuf/ByteString;)V

    .line 2296
    iput-object p1, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->xpubCommonIv_:Ljava/lang/Object;

    .line 2297
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 2292
    throw p1
.end method

.method public setXpubCommonKey(Ljava/lang/String;)Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 2194
    iput-object p1, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->xpubCommonKey_:Ljava/lang/Object;

    .line 2195
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 2191
    throw p1
.end method

.method public setXpubCommonKeyBytes(Lcom/google/protobuf/ByteString;)Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 2218
    invoke-static {p1}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->access$3700(Lcom/google/protobuf/ByteString;)V

    .line 2220
    iput-object p1, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->xpubCommonKey_:Ljava/lang/Object;

    .line 2221
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 2216
    throw p1
.end method
