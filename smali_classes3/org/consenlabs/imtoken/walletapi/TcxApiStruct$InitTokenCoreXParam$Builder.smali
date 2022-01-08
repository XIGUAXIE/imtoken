.class public final Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "TcxApiStruct.java"

# interfaces
.implements Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParamOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;",
        ">;",
        "Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParamOrBuilder;"
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

    .line 1927
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 2074
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->fileDir_:Ljava/lang/Object;

    .line 2150
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->xpubCommonKey_:Ljava/lang/Object;

    .line 2226
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->xpubCommonIv_:Ljava/lang/Object;

    .line 1928
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 1933
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 2074
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->fileDir_:Ljava/lang/Object;

    .line 2150
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->xpubCommonKey_:Ljava/lang/Object;

    .line 2226
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->xpubCommonIv_:Ljava/lang/Object;

    .line 1934
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$1;)V
    .locals 0

    .line 1909
    invoke-direct {p0, p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$1;)V
    .locals 0

    .line 1909
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1915
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct;->access$2400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 1938
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->access$2800()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1909
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1909
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;
    .locals 0

    .line 2016
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 1909
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->build()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1909
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->build()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;
    .locals 2

    .line 1968
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->buildPartial()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;

    move-result-object v0

    .line 1969
    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 1970
    :cond_0
    invoke-static {v0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 1909
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->buildPartial()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1909
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->buildPartial()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;
    .locals 2

    .line 1977
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$1;)V

    .line 1978
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->fileDir_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->access$3002(Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1979
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->xpubCommonKey_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->access$3102(Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1980
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->xpubCommonIv_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->access$3202(Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1981
    iget-boolean v1, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->isDebug_:Z

    invoke-static {v0, v1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->access$3302(Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;Z)Z

    .line 1982
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1909
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->clear()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 1909
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->clear()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1909
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->clear()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1909
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->clear()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;
    .locals 1

    .line 1943
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    .line 1944
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->fileDir_:Ljava/lang/Object;

    .line 1946
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->xpubCommonKey_:Ljava/lang/Object;

    .line 1948
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->xpubCommonIv_:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 1950
    iput-boolean v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->isDebug_:Z

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1909
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1909
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;
    .locals 0

    .line 1999
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;

    return-object p1
.end method

.method public clearFileDir()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;
    .locals 1

    .line 2129
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->getDefaultInstance()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;

    move-result-object v0

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->getFileDir()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->fileDir_:Ljava/lang/Object;

    .line 2130
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->onChanged()V

    return-object p0
.end method

.method public clearIsDebug()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 2327
    iput-boolean v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->isDebug_:Z

    .line 2328
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1909
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1909
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1909
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;
    .locals 0

    .line 2004
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;

    return-object p1
.end method

.method public clearXpubCommonIv()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;
    .locals 1

    .line 2281
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->getDefaultInstance()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;

    move-result-object v0

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->getXpubCommonIv()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->xpubCommonIv_:Ljava/lang/Object;

    .line 2282
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->onChanged()V

    return-object p0
.end method

.method public clearXpubCommonKey()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;
    .locals 1

    .line 2205
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->getDefaultInstance()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;

    move-result-object v0

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->getXpubCommonKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->xpubCommonKey_:Ljava/lang/Object;

    .line 2206
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1909
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->clone()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 1909
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->clone()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 1909
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->clone()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1909
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->clone()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1909
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->clone()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;

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

    .line 1909
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->clone()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;
    .locals 1

    .line 1988
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1909
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1909
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;
    .locals 1

    .line 1963
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->getDefaultInstance()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1958
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct;->access$2400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getFileDir()Ljava/lang/String;
    .locals 2

    .line 2080
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->fileDir_:Ljava/lang/Object;

    .line 2081
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2082
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2084
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2085
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->fileDir_:Ljava/lang/Object;

    return-object v0

    .line 2088
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFileDirBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 2097
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->fileDir_:Ljava/lang/Object;

    .line 2098
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2099
    check-cast v0, Ljava/lang/String;

    .line 2100
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2102
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->fileDir_:Ljava/lang/Object;

    return-object v0

    .line 2105
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getIsDebug()Z
    .locals 1

    .line 2308
    iget-boolean v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->isDebug_:Z

    return v0
.end method

.method public getXpubCommonIv()Ljava/lang/String;
    .locals 2

    .line 2232
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->xpubCommonIv_:Ljava/lang/Object;

    .line 2233
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2234
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2236
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2237
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->xpubCommonIv_:Ljava/lang/Object;

    return-object v0

    .line 2240
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getXpubCommonIvBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 2249
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->xpubCommonIv_:Ljava/lang/Object;

    .line 2250
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2251
    check-cast v0, Ljava/lang/String;

    .line 2252
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2254
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->xpubCommonIv_:Ljava/lang/Object;

    return-object v0

    .line 2257
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getXpubCommonKey()Ljava/lang/String;
    .locals 2

    .line 2156
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->xpubCommonKey_:Ljava/lang/Object;

    .line 2157
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2158
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2160
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2161
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->xpubCommonKey_:Ljava/lang/Object;

    return-object v0

    .line 2164
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getXpubCommonKeyBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 2173
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->xpubCommonKey_:Ljava/lang/Object;

    .line 2174
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2175
    check-cast v0, Ljava/lang/String;

    .line 2176
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2178
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->xpubCommonKey_:Ljava/lang/Object;

    return-object v0

    .line 2181
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1921
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct;->access$2500()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;

    const-class v2, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;

    .line 1922
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

    .line 1909
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1909
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;

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

    .line 1909
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;

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

    .line 1909
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1909
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;

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

    .line 1909
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2062
    :try_start_0
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->access$3500()Lcom/google/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2068
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->mergeFrom(Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2064
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2065
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

    .line 2068
    invoke-virtual {p0, v0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->mergeFrom(Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;

    .line 2070
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;
    .locals 1

    .line 2020
    instance-of v0, p1, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;

    if-eqz v0, :cond_0

    .line 2021
    check-cast p1, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;

    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->mergeFrom(Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;

    move-result-object p1

    return-object p1

    .line 2023
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;
    .locals 1

    .line 2029
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->getDefaultInstance()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2030
    :cond_0
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->getFileDir()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2031
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->access$3000(Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->fileDir_:Ljava/lang/Object;

    .line 2032
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->onChanged()V

    .line 2034
    :cond_1
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->getXpubCommonKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2035
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->access$3100(Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->xpubCommonKey_:Ljava/lang/Object;

    .line 2036
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->onChanged()V

    .line 2038
    :cond_2
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->getXpubCommonIv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2039
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->access$3200(Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->xpubCommonIv_:Ljava/lang/Object;

    .line 2040
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->onChanged()V

    .line 2042
    :cond_3
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->getIsDebug()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2043
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->getIsDebug()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->setIsDebug(Z)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;

    .line 2045
    :cond_4
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->access$3400(Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;

    .line 2046
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1909
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1909
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1909
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;
    .locals 0

    .line 2340
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1909
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1909
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;
    .locals 0

    .line 1994
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;

    return-object p1
.end method

.method public setFileDir(Ljava/lang/String;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 2119
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->fileDir_:Ljava/lang/Object;

    .line 2120
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 2116
    throw p1
.end method

.method public setFileDirBytes(Lcom/google/protobuf/ByteString;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 2143
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->access$3600(Lcom/google/protobuf/ByteString;)V

    .line 2145
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->fileDir_:Ljava/lang/Object;

    .line 2146
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 2141
    throw p1
.end method

.method public setIsDebug(Z)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;
    .locals 0

    .line 2317
    iput-boolean p1, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->isDebug_:Z

    .line 2318
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1909
    invoke-virtual {p0, p1, p2, p3}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1909
    invoke-virtual {p0, p1, p2, p3}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;
    .locals 0

    .line 2010
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1909
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1909
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;
    .locals 0

    .line 2334
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;

    return-object p1
.end method

.method public setXpubCommonIv(Ljava/lang/String;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 2271
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->xpubCommonIv_:Ljava/lang/Object;

    .line 2272
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 2268
    throw p1
.end method

.method public setXpubCommonIvBytes(Lcom/google/protobuf/ByteString;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 2295
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->access$3800(Lcom/google/protobuf/ByteString;)V

    .line 2297
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->xpubCommonIv_:Ljava/lang/Object;

    .line 2298
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 2293
    throw p1
.end method

.method public setXpubCommonKey(Ljava/lang/String;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 2195
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->xpubCommonKey_:Ljava/lang/Object;

    .line 2196
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 2192
    throw p1
.end method

.method public setXpubCommonKeyBytes(Lcom/google/protobuf/ByteString;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 2219
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->access$3700(Lcom/google/protobuf/ByteString;)V

    .line 2221
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->xpubCommonKey_:Ljava/lang/Object;

    .line 2222
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 2217
    throw p1
.end method
