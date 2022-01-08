.class public final Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "ImkeyApi.java"

# interfaces
.implements Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParamOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;",
        ">;",
        "Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParamOrBuilder;"
    }
.end annotation


# instance fields
.field private fileDir_:Ljava/lang/Object;

.field private isDebug_:Z

.field private system_:Ljava/lang/Object;

.field private xpubCommonIv_:Ljava/lang/Object;

.field private xpubCommonKey_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 11464
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 11618
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->fileDir_:Ljava/lang/Object;

    .line 11694
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->xpubCommonKey_:Ljava/lang/Object;

    .line 11770
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->xpubCommonIv_:Ljava/lang/Object;

    .line 11876
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->system_:Ljava/lang/Object;

    .line 11465
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 11470
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 11618
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->fileDir_:Ljava/lang/Object;

    .line 11694
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->xpubCommonKey_:Ljava/lang/Object;

    .line 11770
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->xpubCommonIv_:Ljava/lang/Object;

    .line 11876
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->system_:Ljava/lang/Object;

    .line 11471
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V
    .locals 0

    .line 11446
    invoke-direct {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V
    .locals 0

    .line 11446
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 11452
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->access$18100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 11475
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->access$18500()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 11446
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 11446
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;
    .locals 0

    .line 11556
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 11446
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->build()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 11446
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->build()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;
    .locals 2

    .line 11507
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->buildPartial()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;

    move-result-object v0

    .line 11508
    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 11509
    :cond_0
    invoke-static {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 11446
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->buildPartial()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 11446
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->buildPartial()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;
    .locals 2

    .line 11516
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V

    .line 11517
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->fileDir_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->access$18702(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11518
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->xpubCommonKey_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->access$18802(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11519
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->xpubCommonIv_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->access$18902(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11520
    iget-boolean v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->isDebug_:Z

    invoke-static {v0, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->access$19002(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;Z)Z

    .line 11521
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->system_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->access$19102(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11522
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 11446
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->clear()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 11446
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->clear()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 11446
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->clear()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 11446
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->clear()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;
    .locals 2

    .line 11480
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    .line 11481
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->fileDir_:Ljava/lang/Object;

    .line 11483
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->xpubCommonKey_:Ljava/lang/Object;

    .line 11485
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->xpubCommonIv_:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 11487
    iput-boolean v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->isDebug_:Z

    .line 11489
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->system_:Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 11446
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 11446
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;
    .locals 0

    .line 11539
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;

    return-object p1
.end method

.method public clearFileDir()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;
    .locals 1

    .line 11673
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->getDefaultInstance()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;

    move-result-object v0

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->getFileDir()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->fileDir_:Ljava/lang/Object;

    .line 11674
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->onChanged()V

    return-object p0
.end method

.method public clearIsDebug()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 11871
    iput-boolean v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->isDebug_:Z

    .line 11872
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 11446
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 11446
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 11446
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;
    .locals 0

    .line 11544
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;

    return-object p1
.end method

.method public clearSystem()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;
    .locals 1

    .line 11931
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->getDefaultInstance()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;

    move-result-object v0

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->getSystem()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->system_:Ljava/lang/Object;

    .line 11932
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->onChanged()V

    return-object p0
.end method

.method public clearXpubCommonIv()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;
    .locals 1

    .line 11825
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->getDefaultInstance()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;

    move-result-object v0

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->getXpubCommonIv()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->xpubCommonIv_:Ljava/lang/Object;

    .line 11826
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->onChanged()V

    return-object p0
.end method

.method public clearXpubCommonKey()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;
    .locals 1

    .line 11749
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->getDefaultInstance()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;

    move-result-object v0

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->getXpubCommonKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->xpubCommonKey_:Ljava/lang/Object;

    .line 11750
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 11446
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->clone()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 11446
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->clone()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 11446
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->clone()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 11446
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->clone()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 11446
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->clone()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;

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

    .line 11446
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->clone()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;
    .locals 1

    .line 11528
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 11446
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 11446
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;
    .locals 1

    .line 11502
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->getDefaultInstance()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 11497
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->access$18100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getFileDir()Ljava/lang/String;
    .locals 2

    .line 11624
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->fileDir_:Ljava/lang/Object;

    .line 11625
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 11626
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 11628
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 11629
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->fileDir_:Ljava/lang/Object;

    return-object v0

    .line 11632
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFileDirBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 11641
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->fileDir_:Ljava/lang/Object;

    .line 11642
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 11643
    check-cast v0, Ljava/lang/String;

    .line 11644
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 11646
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->fileDir_:Ljava/lang/Object;

    return-object v0

    .line 11649
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getIsDebug()Z
    .locals 1

    .line 11852
    iget-boolean v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->isDebug_:Z

    return v0
.end method

.method public getSystem()Ljava/lang/String;
    .locals 2

    .line 11882
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->system_:Ljava/lang/Object;

    .line 11883
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 11884
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 11886
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 11887
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->system_:Ljava/lang/Object;

    return-object v0

    .line 11890
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSystemBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 11899
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->system_:Ljava/lang/Object;

    .line 11900
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 11901
    check-cast v0, Ljava/lang/String;

    .line 11902
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 11904
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->system_:Ljava/lang/Object;

    return-object v0

    .line 11907
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getXpubCommonIv()Ljava/lang/String;
    .locals 2

    .line 11776
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->xpubCommonIv_:Ljava/lang/Object;

    .line 11777
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 11778
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 11780
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 11781
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->xpubCommonIv_:Ljava/lang/Object;

    return-object v0

    .line 11784
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getXpubCommonIvBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 11793
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->xpubCommonIv_:Ljava/lang/Object;

    .line 11794
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 11795
    check-cast v0, Ljava/lang/String;

    .line 11796
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 11798
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->xpubCommonIv_:Ljava/lang/Object;

    return-object v0

    .line 11801
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getXpubCommonKey()Ljava/lang/String;
    .locals 2

    .line 11700
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->xpubCommonKey_:Ljava/lang/Object;

    .line 11701
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 11702
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 11704
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 11705
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->xpubCommonKey_:Ljava/lang/Object;

    return-object v0

    .line 11708
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getXpubCommonKeyBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 11717
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->xpubCommonKey_:Ljava/lang/Object;

    .line 11718
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 11719
    check-cast v0, Ljava/lang/String;

    .line 11720
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 11722
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->xpubCommonKey_:Ljava/lang/Object;

    return-object v0

    .line 11725
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 11458
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->access$18200()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;

    const-class v2, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;

    .line 11459
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

    .line 11446
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 11446
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;

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

    .line 11446
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;

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

    .line 11446
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 11446
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;

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

    .line 11446
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 11606
    :try_start_0
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->access$19300()Lcom/google/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 11612
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->mergeFrom(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11608
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11609
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

    .line 11612
    invoke-virtual {p0, v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->mergeFrom(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;

    .line 11614
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;
    .locals 1

    .line 11560
    instance-of v0, p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;

    if-eqz v0, :cond_0

    .line 11561
    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;

    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->mergeFrom(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;

    move-result-object p1

    return-object p1

    .line 11563
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;
    .locals 1

    .line 11569
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->getDefaultInstance()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11570
    :cond_0
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->getFileDir()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 11571
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->access$18700(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->fileDir_:Ljava/lang/Object;

    .line 11572
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->onChanged()V

    .line 11574
    :cond_1
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->getXpubCommonKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 11575
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->access$18800(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->xpubCommonKey_:Ljava/lang/Object;

    .line 11576
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->onChanged()V

    .line 11578
    :cond_2
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->getXpubCommonIv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 11579
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->access$18900(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->xpubCommonIv_:Ljava/lang/Object;

    .line 11580
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->onChanged()V

    .line 11582
    :cond_3
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->getIsDebug()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11583
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->getIsDebug()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->setIsDebug(Z)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;

    .line 11585
    :cond_4
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->getSystem()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 11586
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->access$19100(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->system_:Ljava/lang/Object;

    .line 11587
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->onChanged()V

    .line 11589
    :cond_5
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->access$19200(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;

    .line 11590
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 11446
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 11446
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 11446
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;
    .locals 0

    .line 11960
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 11446
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 11446
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;
    .locals 0

    .line 11534
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;

    return-object p1
.end method

.method public setFileDir(Ljava/lang/String;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 11663
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->fileDir_:Ljava/lang/Object;

    .line 11664
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 11660
    throw p1
.end method

.method public setFileDirBytes(Lcom/google/protobuf/ByteString;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 11687
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->access$19400(Lcom/google/protobuf/ByteString;)V

    .line 11689
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->fileDir_:Ljava/lang/Object;

    .line 11690
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 11685
    throw p1
.end method

.method public setIsDebug(Z)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;
    .locals 0

    .line 11861
    iput-boolean p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->isDebug_:Z

    .line 11862
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 11446
    invoke-virtual {p0, p1, p2, p3}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 11446
    invoke-virtual {p0, p1, p2, p3}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;
    .locals 0

    .line 11550
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;

    return-object p1
.end method

.method public setSystem(Ljava/lang/String;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 11921
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->system_:Ljava/lang/Object;

    .line 11922
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 11918
    throw p1
.end method

.method public setSystemBytes(Lcom/google/protobuf/ByteString;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 11945
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->access$19700(Lcom/google/protobuf/ByteString;)V

    .line 11947
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->system_:Ljava/lang/Object;

    .line 11948
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 11943
    throw p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 11446
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 11446
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;
    .locals 0

    .line 11954
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;

    return-object p1
.end method

.method public setXpubCommonIv(Ljava/lang/String;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 11815
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->xpubCommonIv_:Ljava/lang/Object;

    .line 11816
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 11812
    throw p1
.end method

.method public setXpubCommonIvBytes(Lcom/google/protobuf/ByteString;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 11839
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->access$19600(Lcom/google/protobuf/ByteString;)V

    .line 11841
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->xpubCommonIv_:Ljava/lang/Object;

    .line 11842
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 11837
    throw p1
.end method

.method public setXpubCommonKey(Ljava/lang/String;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 11739
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->xpubCommonKey_:Ljava/lang/Object;

    .line 11740
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 11736
    throw p1
.end method

.method public setXpubCommonKeyBytes(Lcom/google/protobuf/ByteString;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 11763
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->access$19500(Lcom/google/protobuf/ByteString;)V

    .line 11765
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->xpubCommonKey_:Ljava/lang/Object;

    .line 11766
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 11761
    throw p1
.end method
