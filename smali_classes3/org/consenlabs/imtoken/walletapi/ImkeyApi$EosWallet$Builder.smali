.class public final Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "ImkeyApi.java"

# interfaces
.implements Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWalletOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;",
        ">;",
        "Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWalletOrBuilder;"
    }
.end annotation


# instance fields
.field private address_:Ljava/lang/Object;

.field private bitField0_:I

.field private chainType_:Ljava/lang/Object;

.field private publicKeysBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;",
            "Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;",
            "Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfoOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private publicKeys_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 9225
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 9403
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->chainType_:Ljava/lang/Object;

    .line 9479
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->address_:Ljava/lang/Object;

    .line 9556
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->publicKeys_:Ljava/util/List;

    .line 9226
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 9231
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 9403
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->chainType_:Ljava/lang/Object;

    .line 9479
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->address_:Ljava/lang/Object;

    .line 9556
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->publicKeys_:Ljava/util/List;

    .line 9232
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V
    .locals 0

    .line 9207
    invoke-direct {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V
    .locals 0

    .line 9207
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;-><init>()V

    return-void
.end method

.method private ensurePublicKeysIsMutable()V
    .locals 2

    .line 9558
    iget v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 9559
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->publicKeys_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->publicKeys_:Ljava/util/List;

    .line 9560
    iget v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 9213
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->access$13300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getPublicKeysFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;",
            "Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;",
            "Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfoOrBuilder;",
            ">;"
        }
    .end annotation

    .line 9783
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->publicKeysBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 9784
    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->publicKeys_:Ljava/util/List;

    iget v2, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->bitField0_:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 9788
    :goto_0
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 9789
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/google/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->publicKeysBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 9790
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->publicKeys_:Ljava/util/List;

    .line 9792
    :cond_1
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->publicKeysBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 9236
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->access$15200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9237
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->getPublicKeysFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public addAllPublicKeys(Ljava/lang/Iterable;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;",
            ">;)",
            "Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;"
        }
    .end annotation

    .line 9694
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->publicKeysBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9695
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->ensurePublicKeysIsMutable()V

    .line 9696
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->publicKeys_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 9698
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->onChanged()V

    goto :goto_0

    .line 9700
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addPublicKeys(ILorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;
    .locals 1

    .line 9680
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->publicKeysBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9681
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->ensurePublicKeysIsMutable()V

    .line 9682
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->publicKeys_:Ljava/util/List;

    invoke-virtual {p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->build()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 9683
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->onChanged()V

    goto :goto_0

    .line 9685
    :cond_0
    invoke-virtual {p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->build()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addPublicKeys(ILorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;
    .locals 1

    .line 9649
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->publicKeysBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 9653
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->ensurePublicKeysIsMutable()V

    .line 9654
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->publicKeys_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 9655
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 9651
    throw p1

    .line 9657
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addPublicKeys(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;
    .locals 1

    .line 9666
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->publicKeysBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9667
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->ensurePublicKeysIsMutable()V

    .line 9668
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->publicKeys_:Ljava/util/List;

    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->build()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9669
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->onChanged()V

    goto :goto_0

    .line 9671
    :cond_0
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->build()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addPublicKeys(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;
    .locals 1

    .line 9632
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->publicKeysBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 9636
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->ensurePublicKeysIsMutable()V

    .line 9637
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->publicKeys_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9638
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 9634
    throw p1

    .line 9640
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addPublicKeysBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;
    .locals 2

    .line 9762
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->getPublicKeysFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 9763
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->getDefaultInstance()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;

    move-result-object v1

    .line 9762
    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;

    return-object v0
.end method

.method public addPublicKeysBuilder(I)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;
    .locals 2

    .line 9770
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->getPublicKeysFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 9771
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->getDefaultInstance()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;

    move-result-object v1

    .line 9770
    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 9207
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 9207
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;
    .locals 0

    .line 9325
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 9207
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->build()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 9207
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->build()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;
    .locals 2

    .line 9269
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->buildPartial()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;

    move-result-object v0

    .line 9270
    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 9271
    :cond_0
    invoke-static {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 9207
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->buildPartial()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 9207
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->buildPartial()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;
    .locals 2

    .line 9278
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V

    .line 9280
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->chainType_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->access$15402(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9281
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->address_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->access$15502(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9282
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->publicKeysBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_1

    .line 9283
    iget v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 9284
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->publicKeys_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->publicKeys_:Ljava/util/List;

    .line 9285
    iget v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->bitField0_:I

    .line 9287
    :cond_0
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->publicKeys_:Ljava/util/List;

    invoke-static {v0, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->access$15602(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 9289
    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->access$15602(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;Ljava/util/List;)Ljava/util/List;

    .line 9291
    :goto_0
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 9207
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->clear()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 9207
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->clear()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 9207
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->clear()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 9207
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->clear()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;
    .locals 1

    .line 9242
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    .line 9243
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->chainType_:Ljava/lang/Object;

    .line 9245
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->address_:Ljava/lang/Object;

    .line 9247
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->publicKeysBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9248
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->publicKeys_:Ljava/util/List;

    .line 9249
    iget v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->bitField0_:I

    goto :goto_0

    .line 9251
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public clearAddress()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;
    .locals 1

    .line 9534
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->getDefaultInstance()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->address_:Ljava/lang/Object;

    .line 9535
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->onChanged()V

    return-object p0
.end method

.method public clearChainType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;
    .locals 1

    .line 9458
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->getDefaultInstance()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->getChainType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->chainType_:Ljava/lang/Object;

    .line 9459
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 9207
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 9207
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;
    .locals 0

    .line 9308
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 9207
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 9207
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 9207
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;
    .locals 0

    .line 9313
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;

    return-object p1
.end method

.method public clearPublicKeys()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;
    .locals 1

    .line 9708
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->publicKeysBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9709
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->publicKeys_:Ljava/util/List;

    .line 9710
    iget v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->bitField0_:I

    .line 9711
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->onChanged()V

    goto :goto_0

    .line 9713
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 9207
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->clone()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 9207
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->clone()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 9207
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->clone()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 9207
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->clone()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 9207
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->clone()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;

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

    .line 9207
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->clone()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;
    .locals 1

    .line 9297
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;

    return-object v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 2

    .line 9485
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->address_:Ljava/lang/Object;

    .line 9486
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 9487
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 9489
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 9490
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->address_:Ljava/lang/Object;

    return-object v0

    .line 9493
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 9502
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->address_:Ljava/lang/Object;

    .line 9503
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 9504
    check-cast v0, Ljava/lang/String;

    .line 9505
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 9507
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->address_:Ljava/lang/Object;

    return-object v0

    .line 9510
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getChainType()Ljava/lang/String;
    .locals 2

    .line 9409
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->chainType_:Ljava/lang/Object;

    .line 9410
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 9411
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 9413
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 9414
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->chainType_:Ljava/lang/Object;

    return-object v0

    .line 9417
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getChainTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 9426
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->chainType_:Ljava/lang/Object;

    .line 9427
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 9428
    check-cast v0, Ljava/lang/String;

    .line 9429
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 9431
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->chainType_:Ljava/lang/Object;

    return-object v0

    .line 9434
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 9207
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 9207
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;
    .locals 1

    .line 9264
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->getDefaultInstance()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 9259
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->access$13300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getPublicKeys(I)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;
    .locals 1

    .line 9591
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->publicKeysBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9592
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->publicKeys_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;

    return-object p1

    .line 9594
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/google/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;

    return-object p1
.end method

.method public getPublicKeysBuilder(I)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;
    .locals 1

    .line 9735
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->getPublicKeysFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;

    return-object p1
.end method

.method public getPublicKeysBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;",
            ">;"
        }
    .end annotation

    .line 9778
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->getPublicKeysFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPublicKeysCount()I
    .locals 1

    .line 9581
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->publicKeysBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9582
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->publicKeys_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 9584
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public getPublicKeysList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;",
            ">;"
        }
    .end annotation

    .line 9571
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->publicKeysBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9572
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->publicKeys_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 9574
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPublicKeysOrBuilder(I)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfoOrBuilder;
    .locals 1

    .line 9742
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->publicKeysBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9743
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->publicKeys_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfoOrBuilder;

    return-object p1

    .line 9744
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfoOrBuilder;

    return-object p1
.end method

.method public getPublicKeysOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfoOrBuilder;",
            ">;"
        }
    .end annotation

    .line 9752
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->publicKeysBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 9753
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 9755
    :cond_0
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->publicKeys_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 9219
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->access$13400()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;

    const-class v2, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;

    .line 9220
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

    .line 9207
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 9207
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;

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

    .line 9207
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;

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

    .line 9207
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 9207
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;

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

    .line 9207
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 9390
    :try_start_0
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->access$15900()Lcom/google/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 9396
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->mergeFrom(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9392
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9393
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

    .line 9396
    invoke-virtual {p0, v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->mergeFrom(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;

    .line 9398
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;
    .locals 1

    .line 9329
    instance-of v0, p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;

    if-eqz v0, :cond_0

    .line 9330
    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;

    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->mergeFrom(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;

    move-result-object p1

    return-object p1

    .line 9332
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;
    .locals 2

    .line 9338
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->getDefaultInstance()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 9339
    :cond_0
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->getChainType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 9340
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->access$15400(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->chainType_:Ljava/lang/Object;

    .line 9341
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->onChanged()V

    .line 9343
    :cond_1
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 9344
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->access$15500(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->address_:Ljava/lang/Object;

    .line 9345
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->onChanged()V

    .line 9347
    :cond_2
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->publicKeysBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_4

    .line 9348
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->access$15600(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 9349
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->publicKeys_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9350
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->access$15600(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->publicKeys_:Ljava/util/List;

    .line 9351
    iget v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->bitField0_:I

    goto :goto_0

    .line 9353
    :cond_3
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->ensurePublicKeysIsMutable()V

    .line 9354
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->publicKeys_:Ljava/util/List;

    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->access$15600(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9356
    :goto_0
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->onChanged()V

    goto :goto_1

    .line 9359
    :cond_4
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->access$15600(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 9360
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->publicKeysBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 9361
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->publicKeysBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->dispose()V

    const/4 v0, 0x0

    .line 9362
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->publicKeysBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 9363
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->access$15600(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->publicKeys_:Ljava/util/List;

    .line 9364
    iget v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->bitField0_:I

    .line 9366
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->access$15700()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 9367
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->getPublicKeysFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_5
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->publicKeysBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    goto :goto_1

    .line 9369
    :cond_6
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->publicKeysBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->access$15600(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 9373
    :cond_7
    :goto_1
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->access$15800(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;

    .line 9374
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 9207
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 9207
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 9207
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;
    .locals 0

    .line 9803
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;

    return-object p1
.end method

.method public removePublicKeys(I)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;
    .locals 1

    .line 9721
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->publicKeysBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9722
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->ensurePublicKeysIsMutable()V

    .line 9723
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->publicKeys_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 9724
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->onChanged()V

    goto :goto_0

    .line 9726
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public setAddress(Ljava/lang/String;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 9524
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->address_:Ljava/lang/Object;

    .line 9525
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 9521
    throw p1
.end method

.method public setAddressBytes(Lcom/google/protobuf/ByteString;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 9548
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->access$16100(Lcom/google/protobuf/ByteString;)V

    .line 9550
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->address_:Ljava/lang/Object;

    .line 9551
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 9546
    throw p1
.end method

.method public setChainType(Ljava/lang/String;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 9448
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->chainType_:Ljava/lang/Object;

    .line 9449
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 9445
    throw p1
.end method

.method public setChainTypeBytes(Lcom/google/protobuf/ByteString;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 9472
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->access$16000(Lcom/google/protobuf/ByteString;)V

    .line 9474
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->chainType_:Ljava/lang/Object;

    .line 9475
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 9470
    throw p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 9207
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 9207
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;
    .locals 0

    .line 9303
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;

    return-object p1
.end method

.method public setPublicKeys(ILorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;
    .locals 1

    .line 9619
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->publicKeysBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9620
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->ensurePublicKeysIsMutable()V

    .line 9621
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->publicKeys_:Ljava/util/List;

    invoke-virtual {p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->build()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 9622
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->onChanged()V

    goto :goto_0

    .line 9624
    :cond_0
    invoke-virtual {p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->build()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setPublicKeys(ILorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;
    .locals 1

    .line 9602
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->publicKeysBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 9606
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->ensurePublicKeysIsMutable()V

    .line 9607
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->publicKeys_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 9608
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 9604
    throw p1

    .line 9610
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 9207
    invoke-virtual {p0, p1, p2, p3}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 9207
    invoke-virtual {p0, p1, p2, p3}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;
    .locals 0

    .line 9319
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 9207
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 9207
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;
    .locals 0

    .line 9797
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;

    return-object p1
.end method
