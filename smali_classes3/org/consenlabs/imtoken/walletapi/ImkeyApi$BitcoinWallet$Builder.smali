.class public final Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "ImkeyApi.java"

# interfaces
.implements Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWalletOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;",
        ">;",
        "Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWalletOrBuilder;"
    }
.end annotation


# instance fields
.field private address_:Ljava/lang/Object;

.field private chainType_:Ljava/lang/Object;

.field private encXPub_:Ljava/lang/Object;

.field private externalAddressBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;",
            "Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;",
            "Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private externalAddress_:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;

.field private path_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 7264
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 7426
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->path_:Ljava/lang/Object;

    .line 7502
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->chainType_:Ljava/lang/Object;

    .line 7578
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->address_:Ljava/lang/Object;

    .line 7654
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->encXPub_:Ljava/lang/Object;

    .line 7265
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 7270
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 7426
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->path_:Ljava/lang/Object;

    .line 7502
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->chainType_:Ljava/lang/Object;

    .line 7578
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->address_:Ljava/lang/Object;

    .line 7654
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->encXPub_:Ljava/lang/Object;

    .line 7271
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V
    .locals 0

    .line 7246
    invoke-direct {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V
    .locals 0

    .line 7246
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 7252
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->access$11500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getExternalAddressFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;",
            "Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;",
            "Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressOrBuilder;",
            ">;"
        }
    .end annotation

    .line 7838
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->externalAddressBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 7839
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 7841
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->getExternalAddress()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;

    move-result-object v1

    .line 7842
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 7843
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->externalAddressBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 7844
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->externalAddress_:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;

    .line 7846
    :cond_0
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->externalAddressBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 7275
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->access$11900()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 7246
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 7246
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;
    .locals 0

    .line 7364
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 7246
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->build()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 7246
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->build()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;
    .locals 2

    .line 7311
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->buildPartial()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;

    move-result-object v0

    .line 7312
    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 7313
    :cond_0
    invoke-static {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 7246
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->buildPartial()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 7246
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->buildPartial()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;
    .locals 2

    .line 7320
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V

    .line 7321
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->path_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->access$12102(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7322
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->chainType_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->access$12202(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7323
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->address_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->access$12302(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7324
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->encXPub_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->access$12402(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7325
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->externalAddressBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_0

    .line 7326
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->externalAddress_:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;

    invoke-static {v0, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->access$12502(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;

    goto :goto_0

    .line 7328
    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;

    invoke-static {v0, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->access$12502(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;

    .line 7330
    :goto_0
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 7246
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->clear()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 7246
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->clear()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 7246
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->clear()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 7246
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->clear()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;
    .locals 2

    .line 7280
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    .line 7281
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->path_:Ljava/lang/Object;

    .line 7283
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->chainType_:Ljava/lang/Object;

    .line 7285
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->address_:Ljava/lang/Object;

    .line 7287
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->encXPub_:Ljava/lang/Object;

    .line 7289
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->externalAddressBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 7290
    iput-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->externalAddress_:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;

    goto :goto_0

    .line 7292
    :cond_0
    iput-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->externalAddress_:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;

    .line 7293
    iput-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->externalAddressBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public clearAddress()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;
    .locals 1

    .line 7633
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->getDefaultInstance()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->address_:Ljava/lang/Object;

    .line 7634
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->onChanged()V

    return-object p0
.end method

.method public clearChainType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;
    .locals 1

    .line 7557
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->getDefaultInstance()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->getChainType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->chainType_:Ljava/lang/Object;

    .line 7558
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->onChanged()V

    return-object p0
.end method

.method public clearEncXPub()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;
    .locals 1

    .line 7709
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->getDefaultInstance()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->getEncXPub()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->encXPub_:Ljava/lang/Object;

    .line 7710
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->onChanged()V

    return-object p0
.end method

.method public clearExternalAddress()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;
    .locals 2

    .line 7803
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->externalAddressBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 7804
    iput-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->externalAddress_:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;

    .line 7805
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->onChanged()V

    goto :goto_0

    .line 7807
    :cond_0
    iput-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->externalAddress_:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;

    .line 7808
    iput-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->externalAddressBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 7246
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 7246
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;
    .locals 0

    .line 7347
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 7246
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 7246
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 7246
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;
    .locals 0

    .line 7352
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;

    return-object p1
.end method

.method public clearPath()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;
    .locals 1

    .line 7481
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->getDefaultInstance()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->path_:Ljava/lang/Object;

    .line 7482
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 7246
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->clone()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 7246
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->clone()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 7246
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->clone()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 7246
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->clone()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 7246
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->clone()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;

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

    .line 7246
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->clone()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;
    .locals 1

    .line 7336
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;

    return-object v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 2

    .line 7584
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->address_:Ljava/lang/Object;

    .line 7585
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 7586
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 7588
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 7589
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->address_:Ljava/lang/Object;

    return-object v0

    .line 7592
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 7601
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->address_:Ljava/lang/Object;

    .line 7602
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7603
    check-cast v0, Ljava/lang/String;

    .line 7604
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 7606
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->address_:Ljava/lang/Object;

    return-object v0

    .line 7609
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getChainType()Ljava/lang/String;
    .locals 2

    .line 7508
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->chainType_:Ljava/lang/Object;

    .line 7509
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 7510
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 7512
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 7513
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->chainType_:Ljava/lang/Object;

    return-object v0

    .line 7516
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getChainTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 7525
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->chainType_:Ljava/lang/Object;

    .line 7526
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7527
    check-cast v0, Ljava/lang/String;

    .line 7528
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 7530
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->chainType_:Ljava/lang/Object;

    return-object v0

    .line 7533
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 7246
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 7246
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;
    .locals 1

    .line 7306
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->getDefaultInstance()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 7301
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->access$11500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getEncXPub()Ljava/lang/String;
    .locals 2

    .line 7660
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->encXPub_:Ljava/lang/Object;

    .line 7661
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 7662
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 7664
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 7665
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->encXPub_:Ljava/lang/Object;

    return-object v0

    .line 7668
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getEncXPubBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 7677
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->encXPub_:Ljava/lang/Object;

    .line 7678
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7679
    check-cast v0, Ljava/lang/String;

    .line 7680
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 7682
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->encXPub_:Ljava/lang/Object;

    return-object v0

    .line 7685
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getExternalAddress()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;
    .locals 1

    .line 7745
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->externalAddressBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 7746
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->externalAddress_:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->getDefaultInstance()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;

    move-result-object v0

    :cond_0
    return-object v0

    .line 7748
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;

    return-object v0
.end method

.method public getExternalAddressBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;
    .locals 1

    .line 7818
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->onChanged()V

    .line 7819
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->getExternalAddressFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;

    return-object v0
.end method

.method public getExternalAddressOrBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressOrBuilder;
    .locals 1

    .line 7825
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->externalAddressBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 7826
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressOrBuilder;

    return-object v0

    .line 7828
    :cond_0
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->externalAddress_:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;

    if-nez v0, :cond_1

    .line 7829
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->getDefaultInstance()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 2

    .line 7432
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->path_:Ljava/lang/Object;

    .line 7433
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 7434
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 7436
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 7437
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->path_:Ljava/lang/Object;

    return-object v0

    .line 7440
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPathBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 7449
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->path_:Ljava/lang/Object;

    .line 7450
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7451
    check-cast v0, Ljava/lang/String;

    .line 7452
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 7454
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->path_:Ljava/lang/Object;

    return-object v0

    .line 7457
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasExternalAddress()Z
    .locals 1

    .line 7738
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->externalAddressBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->externalAddress_:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 7258
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->access$11600()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;

    const-class v2, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;

    .line 7259
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeExternalAddress(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;
    .locals 1

    .line 7785
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->externalAddressBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 7786
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->externalAddress_:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;

    if-eqz v0, :cond_0

    .line 7788
    invoke-static {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->newBuilder(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->mergeFrom(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->buildPartial()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;

    move-result-object p1

    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->externalAddress_:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;

    goto :goto_0

    .line 7790
    :cond_0
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->externalAddress_:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;

    .line 7792
    :goto_0
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->onChanged()V

    goto :goto_1

    .line 7794
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_1
    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7246
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 7246
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;

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

    .line 7246
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;

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

    .line 7246
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 7246
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;

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

    .line 7246
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 7414
    :try_start_0
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->access$12700()Lcom/google/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 7420
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->mergeFrom(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7416
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7417
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

    .line 7420
    invoke-virtual {p0, v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->mergeFrom(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;

    .line 7422
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;
    .locals 1

    .line 7368
    instance-of v0, p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;

    if-eqz v0, :cond_0

    .line 7369
    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;

    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->mergeFrom(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;

    move-result-object p1

    return-object p1

    .line 7371
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;
    .locals 1

    .line 7377
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->getDefaultInstance()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 7378
    :cond_0
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7379
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->access$12100(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->path_:Ljava/lang/Object;

    .line 7380
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->onChanged()V

    .line 7382
    :cond_1
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->getChainType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 7383
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->access$12200(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->chainType_:Ljava/lang/Object;

    .line 7384
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->onChanged()V

    .line 7386
    :cond_2
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 7387
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->access$12300(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->address_:Ljava/lang/Object;

    .line 7388
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->onChanged()V

    .line 7390
    :cond_3
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->getEncXPub()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 7391
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->access$12400(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->encXPub_:Ljava/lang/Object;

    .line 7392
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->onChanged()V

    .line 7394
    :cond_4
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->hasExternalAddress()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7395
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->getExternalAddress()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->mergeExternalAddress(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;

    .line 7397
    :cond_5
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->access$12600(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;

    .line 7398
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 7246
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 7246
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 7246
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;
    .locals 0

    .line 7857
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;

    return-object p1
.end method

.method public setAddress(Ljava/lang/String;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 7623
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->address_:Ljava/lang/Object;

    .line 7624
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 7620
    throw p1
.end method

.method public setAddressBytes(Lcom/google/protobuf/ByteString;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 7647
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->access$13000(Lcom/google/protobuf/ByteString;)V

    .line 7649
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->address_:Ljava/lang/Object;

    .line 7650
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 7645
    throw p1
.end method

.method public setChainType(Ljava/lang/String;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 7547
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->chainType_:Ljava/lang/Object;

    .line 7548
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 7544
    throw p1
.end method

.method public setChainTypeBytes(Lcom/google/protobuf/ByteString;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 7571
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->access$12900(Lcom/google/protobuf/ByteString;)V

    .line 7573
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->chainType_:Ljava/lang/Object;

    .line 7574
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 7569
    throw p1
.end method

.method public setEncXPub(Ljava/lang/String;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 7699
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->encXPub_:Ljava/lang/Object;

    .line 7700
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 7696
    throw p1
.end method

.method public setEncXPubBytes(Lcom/google/protobuf/ByteString;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 7723
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->access$13100(Lcom/google/protobuf/ByteString;)V

    .line 7725
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->encXPub_:Ljava/lang/Object;

    .line 7726
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 7721
    throw p1
.end method

.method public setExternalAddress(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;
    .locals 1

    .line 7772
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->externalAddressBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 7773
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->build()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;

    move-result-object p1

    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->externalAddress_:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;

    .line 7774
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->onChanged()V

    goto :goto_0

    .line 7776
    :cond_0
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->build()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setExternalAddress(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;
    .locals 1

    .line 7755
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->externalAddressBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 7759
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->externalAddress_:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;

    .line 7760
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 7757
    throw p1

    .line 7762
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 7246
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 7246
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;
    .locals 0

    .line 7342
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;

    return-object p1
.end method

.method public setPath(Ljava/lang/String;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 7471
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->path_:Ljava/lang/Object;

    .line 7472
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 7468
    throw p1
.end method

.method public setPathBytes(Lcom/google/protobuf/ByteString;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 7495
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->access$12800(Lcom/google/protobuf/ByteString;)V

    .line 7497
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->path_:Ljava/lang/Object;

    .line 7498
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 7493
    throw p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 7246
    invoke-virtual {p0, p1, p2, p3}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 7246
    invoke-virtual {p0, p1, p2, p3}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;
    .locals 0

    .line 7358
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 7246
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 7246
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;
    .locals 0

    .line 7851
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;

    return-object p1
.end method
