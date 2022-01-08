.class public final Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoinj/wallet/Protos$WalletOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/wallet/Protos$Wallet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder<",
        "Lorg/bitcoinj/wallet/Protos$Wallet$Builder;",
        ">;",
        "Lorg/bitcoinj/wallet/Protos$WalletOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private description_:Ljava/lang/Object;

.field private encryptionParametersBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder<",
            "Lorg/bitcoinj/wallet/Protos$ScryptParameters;",
            "Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;",
            "Lorg/bitcoinj/wallet/Protos$ScryptParametersOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private encryptionParameters_:Lorg/bitcoinj/wallet/Protos$ScryptParameters;

.field private encryptionType_:Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

.field private extensionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder<",
            "Lorg/bitcoinj/wallet/Protos$Extension;",
            "Lorg/bitcoinj/wallet/Protos$Extension$Builder;",
            "Lorg/bitcoinj/wallet/Protos$ExtensionOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private extension_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bitcoinj/wallet/Protos$Extension;",
            ">;"
        }
    .end annotation
.end field

.field private keyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder<",
            "Lorg/bitcoinj/wallet/Protos$Key;",
            "Lorg/bitcoinj/wallet/Protos$Key$Builder;",
            "Lorg/bitcoinj/wallet/Protos$KeyOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private keyRotationTime_:J

.field private key_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bitcoinj/wallet/Protos$Key;",
            ">;"
        }
    .end annotation
.end field

.field private lastSeenBlockHash_:Lcom/google/protobuf/ByteString;

.field private lastSeenBlockHeight_:I

.field private lastSeenBlockTimeSecs_:J

.field private networkIdentifier_:Ljava/lang/Object;

.field private tagsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder<",
            "Lorg/bitcoinj/wallet/Protos$Tag;",
            "Lorg/bitcoinj/wallet/Protos$Tag$Builder;",
            "Lorg/bitcoinj/wallet/Protos$TagOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private tags_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bitcoinj/wallet/Protos$Tag;",
            ">;"
        }
    .end annotation
.end field

.field private transactionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder<",
            "Lorg/bitcoinj/wallet/Protos$Transaction;",
            "Lorg/bitcoinj/wallet/Protos$Transaction$Builder;",
            "Lorg/bitcoinj/wallet/Protos$TransactionOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private transactionSignersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder<",
            "Lorg/bitcoinj/wallet/Protos$TransactionSigner;",
            "Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;",
            "Lorg/bitcoinj/wallet/Protos$TransactionSignerOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private transactionSigners_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bitcoinj/wallet/Protos$TransactionSigner;",
            ">;"
        }
    .end annotation
.end field

.field private transaction_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bitcoinj/wallet/Protos$Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private version_:I

.field private watchedScriptBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder<",
            "Lorg/bitcoinj/wallet/Protos$Script;",
            "Lorg/bitcoinj/wallet/Protos$Script$Builder;",
            "Lorg/bitcoinj/wallet/Protos$ScriptOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private watchedScript_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bitcoinj/wallet/Protos$Script;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 15539
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    const-string v0, ""

    .line 16021
    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->networkIdentifier_:Ljava/lang/Object;

    .line 16121
    sget-object v1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->lastSeenBlockHash_:Lcom/google/protobuf/ByteString;

    .line 16253
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->key_:Ljava/util/List;

    .line 16493
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transaction_:Ljava/util/List;

    .line 16733
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScript_:Ljava/util/List;

    .line 16972
    sget-object v1, Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;->UNENCRYPTED:Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

    iput-object v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->encryptionType_:Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

    .line 17007
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    move-result-object v1

    iput-object v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->encryptionParameters_:Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    const/4 v1, 0x1

    .line 17123
    iput v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->version_:I

    .line 17180
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extension_:Ljava/util/List;

    .line 17419
    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->description_:Ljava/lang/Object;

    .line 17576
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->tags_:Ljava/util/List;

    .line 17816
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionSigners_:Ljava/util/List;

    .line 15540
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1

    .line 15545
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    const-string p1, ""

    .line 16021
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->networkIdentifier_:Ljava/lang/Object;

    .line 16121
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->lastSeenBlockHash_:Lcom/google/protobuf/ByteString;

    .line 16253
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->key_:Ljava/util/List;

    .line 16493
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transaction_:Ljava/util/List;

    .line 16733
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScript_:Ljava/util/List;

    .line 16972
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;->UNENCRYPTED:Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->encryptionType_:Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

    .line 17007
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->encryptionParameters_:Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    const/4 v0, 0x1

    .line 17123
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->version_:I

    .line 17180
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extension_:Ljava/util/List;

    .line 17419
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->description_:Ljava/lang/Object;

    .line 17576
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->tags_:Ljava/util/List;

    .line 17816
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionSigners_:Ljava/util/List;

    .line 15546
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoinj/wallet/Protos$1;)V
    .locals 0

    .line 15522
    invoke-direct {p0, p1}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$17200()Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    .line 15522
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->create()Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    .line 15560
    new-instance v0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;-><init>()V

    return-object v0
.end method

.method private ensureExtensionIsMutable()V
    .locals 3

    .line 17182
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    const/16 v1, 0x400

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 17183
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extension_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extension_:Ljava/util/List;

    .line 17184
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureKeyIsMutable()V
    .locals 3

    .line 16255
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 16256
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->key_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->key_:Ljava/util/List;

    .line 16257
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureTagsIsMutable()V
    .locals 3

    .line 17578
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    const/16 v1, 0x2000

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 17579
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->tags_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->tags_:Ljava/util/List;

    .line 17580
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureTransactionIsMutable()V
    .locals 3

    .line 16495
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 16496
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transaction_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transaction_:Ljava/util/List;

    .line 16497
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureTransactionSignersIsMutable()V
    .locals 3

    .line 17818
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    const/16 v1, 0x4000

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 17819
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionSigners_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionSigners_:Ljava/util/List;

    .line 17820
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureWatchedScriptIsMutable()V
    .locals 3

    .line 16735
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 16736
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScript_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScript_:Ljava/util/List;

    .line 16737
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 15528
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$16900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getEncryptionParametersFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder<",
            "Lorg/bitcoinj/wallet/Protos$ScryptParameters;",
            "Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;",
            "Lorg/bitcoinj/wallet/Protos$ScryptParametersOrBuilder;",
            ">;"
        }
    .end annotation

    .line 17112
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->encryptionParametersBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 17113
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    .line 17115
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getEncryptionParameters()Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    move-result-object v1

    .line 17116
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    .line 17117
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->encryptionParametersBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    .line 17118
    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->encryptionParameters_:Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    .line 17120
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->encryptionParametersBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private getExtensionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder<",
            "Lorg/bitcoinj/wallet/Protos$Extension;",
            "Lorg/bitcoinj/wallet/Protos$Extension$Builder;",
            "Lorg/bitcoinj/wallet/Protos$ExtensionOrBuilder;",
            ">;"
        }
    .end annotation

    .line 17407
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extensionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 17408
    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extension_:Ljava/util/List;

    iget v2, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    const/16 v3, 0x400

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 17412
    :goto_0
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    .line 17413
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extensionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    const/4 v0, 0x0

    .line 17414
    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extension_:Ljava/util/List;

    .line 17416
    :cond_1
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extensionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0
.end method

.method private getKeyFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder<",
            "Lorg/bitcoinj/wallet/Protos$Key;",
            "Lorg/bitcoinj/wallet/Protos$Key$Builder;",
            "Lorg/bitcoinj/wallet/Protos$KeyOrBuilder;",
            ">;"
        }
    .end annotation

    .line 16480
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->keyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 16481
    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->key_:Ljava/util/List;

    iget v2, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    const/16 v3, 0x10

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 16485
    :goto_0
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    .line 16486
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->keyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    const/4 v0, 0x0

    .line 16487
    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->key_:Ljava/util/List;

    .line 16489
    :cond_1
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->keyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0
.end method

.method private getTagsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder<",
            "Lorg/bitcoinj/wallet/Protos$Tag;",
            "Lorg/bitcoinj/wallet/Protos$Tag$Builder;",
            "Lorg/bitcoinj/wallet/Protos$TagOrBuilder;",
            ">;"
        }
    .end annotation

    .line 17803
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->tagsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 17804
    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->tags_:Ljava/util/List;

    iget v2, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    const/16 v3, 0x2000

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 17808
    :goto_0
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    .line 17809
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->tagsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    const/4 v0, 0x0

    .line 17810
    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->tags_:Ljava/util/List;

    .line 17812
    :cond_1
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->tagsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0
.end method

.method private getTransactionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder<",
            "Lorg/bitcoinj/wallet/Protos$Transaction;",
            "Lorg/bitcoinj/wallet/Protos$Transaction$Builder;",
            "Lorg/bitcoinj/wallet/Protos$TransactionOrBuilder;",
            ">;"
        }
    .end annotation

    .line 16720
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 16721
    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transaction_:Ljava/util/List;

    iget v2, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    const/16 v3, 0x20

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 16725
    :goto_0
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    .line 16726
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    const/4 v0, 0x0

    .line 16727
    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transaction_:Ljava/util/List;

    .line 16729
    :cond_1
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0
.end method

.method private getTransactionSignersFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder<",
            "Lorg/bitcoinj/wallet/Protos$TransactionSigner;",
            "Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;",
            "Lorg/bitcoinj/wallet/Protos$TransactionSignerOrBuilder;",
            ">;"
        }
    .end annotation

    .line 18115
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionSignersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 18116
    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionSigners_:Ljava/util/List;

    iget v2, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    const/16 v3, 0x4000

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 18120
    :goto_0
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    .line 18121
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionSignersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    const/4 v0, 0x0

    .line 18122
    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionSigners_:Ljava/util/List;

    .line 18124
    :cond_1
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionSignersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0
.end method

.method private getWatchedScriptFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder<",
            "Lorg/bitcoinj/wallet/Protos$Script;",
            "Lorg/bitcoinj/wallet/Protos$Script$Builder;",
            "Lorg/bitcoinj/wallet/Protos$ScriptOrBuilder;",
            ">;"
        }
    .end annotation

    .line 16960
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScriptBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 16961
    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScript_:Ljava/util/List;

    iget v2, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    const/16 v3, 0x40

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 16965
    :goto_0
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    .line 16966
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScriptBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    const/4 v0, 0x0

    .line 16967
    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScript_:Ljava/util/List;

    .line 16969
    :cond_1
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScriptBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 15549
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$17400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15550
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getKeyFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 15551
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getTransactionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 15552
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getWatchedScriptFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 15553
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getEncryptionParametersFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 15554
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getExtensionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 15555
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getTagsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 15556
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getTransactionSignersFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    :cond_0
    return-void
.end method


# virtual methods
.method public addAllExtension(Ljava/lang/Iterable;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/bitcoinj/wallet/Protos$Extension;",
            ">;)",
            "Lorg/bitcoinj/wallet/Protos$Wallet$Builder;"
        }
    .end annotation

    .line 17318
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extensionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 17319
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureExtensionIsMutable()V

    .line 17320
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extension_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 17322
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    goto :goto_0

    .line 17324
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public addAllKey(Ljava/lang/Iterable;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/bitcoinj/wallet/Protos$Key;",
            ">;)",
            "Lorg/bitcoinj/wallet/Protos$Wallet$Builder;"
        }
    .end annotation

    .line 16391
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->keyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 16392
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureKeyIsMutable()V

    .line 16393
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->key_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 16395
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    goto :goto_0

    .line 16397
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public addAllTags(Ljava/lang/Iterable;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/bitcoinj/wallet/Protos$Tag;",
            ">;)",
            "Lorg/bitcoinj/wallet/Protos$Wallet$Builder;"
        }
    .end annotation

    .line 17714
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->tagsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 17715
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureTagsIsMutable()V

    .line 17716
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->tags_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 17718
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    goto :goto_0

    .line 17720
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public addAllTransaction(Ljava/lang/Iterable;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/bitcoinj/wallet/Protos$Transaction;",
            ">;)",
            "Lorg/bitcoinj/wallet/Protos$Wallet$Builder;"
        }
    .end annotation

    .line 16631
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 16632
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureTransactionIsMutable()V

    .line 16633
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transaction_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 16635
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    goto :goto_0

    .line 16637
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public addAllTransactionSigners(Ljava/lang/Iterable;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/bitcoinj/wallet/Protos$TransactionSigner;",
            ">;)",
            "Lorg/bitcoinj/wallet/Protos$Wallet$Builder;"
        }
    .end annotation

    .line 17994
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionSignersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 17995
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureTransactionSignersIsMutable()V

    .line 17996
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionSigners_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 17998
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    goto :goto_0

    .line 18000
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public addAllWatchedScript(Ljava/lang/Iterable;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/bitcoinj/wallet/Protos$Script;",
            ">;)",
            "Lorg/bitcoinj/wallet/Protos$Wallet$Builder;"
        }
    .end annotation

    .line 16871
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScriptBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 16872
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureWatchedScriptIsMutable()V

    .line 16873
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScript_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 16875
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    goto :goto_0

    .line 16877
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public addExtension(ILorg/bitcoinj/wallet/Protos$Extension$Builder;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    .line 17304
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extensionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 17305
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureExtensionIsMutable()V

    .line 17306
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extension_:Ljava/util/List;

    invoke-virtual {p2}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->build()Lorg/bitcoinj/wallet/Protos$Extension;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 17307
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    goto :goto_0

    .line 17309
    :cond_0
    invoke-virtual {p2}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->build()Lorg/bitcoinj/wallet/Protos$Extension;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public addExtension(ILorg/bitcoinj/wallet/Protos$Extension;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    .line 17273
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extensionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 17277
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureExtensionIsMutable()V

    .line 17278
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extension_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 17279
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 17275
    throw p1

    .line 17281
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public addExtension(Lorg/bitcoinj/wallet/Protos$Extension$Builder;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    .line 17290
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extensionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 17291
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureExtensionIsMutable()V

    .line 17292
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extension_:Ljava/util/List;

    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->build()Lorg/bitcoinj/wallet/Protos$Extension;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17293
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    goto :goto_0

    .line 17295
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->build()Lorg/bitcoinj/wallet/Protos$Extension;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public addExtension(Lorg/bitcoinj/wallet/Protos$Extension;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    .line 17256
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extensionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 17260
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureExtensionIsMutable()V

    .line 17261
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extension_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17262
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 17258
    throw p1

    .line 17264
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public addExtensionBuilder()Lorg/bitcoinj/wallet/Protos$Extension$Builder;
    .locals 2

    .line 17386
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getExtensionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    .line 17387
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Extension;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$Extension;

    move-result-object v1

    .line 17386
    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;

    return-object v0
.end method

.method public addExtensionBuilder(I)Lorg/bitcoinj/wallet/Protos$Extension$Builder;
    .locals 2

    .line 17394
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getExtensionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    .line 17395
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Extension;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$Extension;

    move-result-object v1

    .line 17394
    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/Protos$Extension$Builder;

    return-object p1
.end method

.method public addKey(ILorg/bitcoinj/wallet/Protos$Key$Builder;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    .line 16377
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->keyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 16378
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureKeyIsMutable()V

    .line 16379
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->key_:Ljava/util/List;

    invoke-virtual {p2}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->build()Lorg/bitcoinj/wallet/Protos$Key;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 16380
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    goto :goto_0

    .line 16382
    :cond_0
    invoke-virtual {p2}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->build()Lorg/bitcoinj/wallet/Protos$Key;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public addKey(ILorg/bitcoinj/wallet/Protos$Key;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    .line 16346
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->keyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 16350
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureKeyIsMutable()V

    .line 16351
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->key_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 16352
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 16348
    throw p1

    .line 16354
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public addKey(Lorg/bitcoinj/wallet/Protos$Key$Builder;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    .line 16363
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->keyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 16364
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureKeyIsMutable()V

    .line 16365
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->key_:Ljava/util/List;

    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->build()Lorg/bitcoinj/wallet/Protos$Key;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16366
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    goto :goto_0

    .line 16368
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->build()Lorg/bitcoinj/wallet/Protos$Key;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public addKey(Lorg/bitcoinj/wallet/Protos$Key;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    .line 16329
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->keyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 16333
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureKeyIsMutable()V

    .line 16334
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->key_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16335
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 16331
    throw p1

    .line 16337
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public addKeyBuilder()Lorg/bitcoinj/wallet/Protos$Key$Builder;
    .locals 2

    .line 16459
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getKeyFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    .line 16460
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Key;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$Key;

    move-result-object v1

    .line 16459
    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Key$Builder;

    return-object v0
.end method

.method public addKeyBuilder(I)Lorg/bitcoinj/wallet/Protos$Key$Builder;
    .locals 2

    .line 16467
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getKeyFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    .line 16468
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Key;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$Key;

    move-result-object v1

    .line 16467
    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/Protos$Key$Builder;

    return-object p1
.end method

.method public addTags(ILorg/bitcoinj/wallet/Protos$Tag$Builder;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    .line 17700
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->tagsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 17701
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureTagsIsMutable()V

    .line 17702
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->tags_:Ljava/util/List;

    invoke-virtual {p2}, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->build()Lorg/bitcoinj/wallet/Protos$Tag;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 17703
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    goto :goto_0

    .line 17705
    :cond_0
    invoke-virtual {p2}, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->build()Lorg/bitcoinj/wallet/Protos$Tag;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public addTags(ILorg/bitcoinj/wallet/Protos$Tag;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    .line 17669
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->tagsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 17673
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureTagsIsMutable()V

    .line 17674
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->tags_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 17675
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 17671
    throw p1

    .line 17677
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public addTags(Lorg/bitcoinj/wallet/Protos$Tag$Builder;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    .line 17686
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->tagsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 17687
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureTagsIsMutable()V

    .line 17688
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->tags_:Ljava/util/List;

    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->build()Lorg/bitcoinj/wallet/Protos$Tag;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17689
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    goto :goto_0

    .line 17691
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->build()Lorg/bitcoinj/wallet/Protos$Tag;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public addTags(Lorg/bitcoinj/wallet/Protos$Tag;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    .line 17652
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->tagsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 17656
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureTagsIsMutable()V

    .line 17657
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->tags_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17658
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 17654
    throw p1

    .line 17660
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public addTagsBuilder()Lorg/bitcoinj/wallet/Protos$Tag$Builder;
    .locals 2

    .line 17782
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getTagsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    .line 17783
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Tag;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$Tag;

    move-result-object v1

    .line 17782
    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Tag$Builder;

    return-object v0
.end method

.method public addTagsBuilder(I)Lorg/bitcoinj/wallet/Protos$Tag$Builder;
    .locals 2

    .line 17790
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getTagsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    .line 17791
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Tag;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$Tag;

    move-result-object v1

    .line 17790
    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/Protos$Tag$Builder;

    return-object p1
.end method

.method public addTransaction(ILorg/bitcoinj/wallet/Protos$Transaction$Builder;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    .line 16617
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 16618
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureTransactionIsMutable()V

    .line 16619
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transaction_:Ljava/util/List;

    invoke-virtual {p2}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->build()Lorg/bitcoinj/wallet/Protos$Transaction;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 16620
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    goto :goto_0

    .line 16622
    :cond_0
    invoke-virtual {p2}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->build()Lorg/bitcoinj/wallet/Protos$Transaction;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public addTransaction(ILorg/bitcoinj/wallet/Protos$Transaction;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    .line 16586
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 16590
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureTransactionIsMutable()V

    .line 16591
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transaction_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 16592
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 16588
    throw p1

    .line 16594
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public addTransaction(Lorg/bitcoinj/wallet/Protos$Transaction$Builder;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    .line 16603
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 16604
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureTransactionIsMutable()V

    .line 16605
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transaction_:Ljava/util/List;

    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->build()Lorg/bitcoinj/wallet/Protos$Transaction;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16606
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    goto :goto_0

    .line 16608
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->build()Lorg/bitcoinj/wallet/Protos$Transaction;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public addTransaction(Lorg/bitcoinj/wallet/Protos$Transaction;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    .line 16569
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 16573
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureTransactionIsMutable()V

    .line 16574
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transaction_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16575
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 16571
    throw p1

    .line 16577
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public addTransactionBuilder()Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 2

    .line 16699
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getTransactionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    .line 16700
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Transaction;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$Transaction;

    move-result-object v1

    .line 16699
    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    return-object v0
.end method

.method public addTransactionBuilder(I)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 2

    .line 16707
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getTransactionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    .line 16708
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Transaction;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$Transaction;

    move-result-object v1

    .line 16707
    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    return-object p1
.end method

.method public addTransactionSigners(ILorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    .line 17976
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionSignersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 17977
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureTransactionSignersIsMutable()V

    .line 17978
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionSigners_:Ljava/util/List;

    invoke-virtual {p2}, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->build()Lorg/bitcoinj/wallet/Protos$TransactionSigner;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 17979
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    goto :goto_0

    .line 17981
    :cond_0
    invoke-virtual {p2}, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->build()Lorg/bitcoinj/wallet/Protos$TransactionSigner;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public addTransactionSigners(ILorg/bitcoinj/wallet/Protos$TransactionSigner;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    .line 17937
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionSignersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 17941
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureTransactionSignersIsMutable()V

    .line 17942
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionSigners_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 17943
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 17939
    throw p1

    .line 17945
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public addTransactionSigners(Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    .line 17958
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionSignersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 17959
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureTransactionSignersIsMutable()V

    .line 17960
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionSigners_:Ljava/util/List;

    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->build()Lorg/bitcoinj/wallet/Protos$TransactionSigner;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17961
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    goto :goto_0

    .line 17963
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->build()Lorg/bitcoinj/wallet/Protos$TransactionSigner;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public addTransactionSigners(Lorg/bitcoinj/wallet/Protos$TransactionSigner;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    .line 17916
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionSignersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 17920
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureTransactionSignersIsMutable()V

    .line 17921
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionSigners_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17922
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 17918
    throw p1

    .line 17924
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public addTransactionSignersBuilder()Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;
    .locals 2

    .line 18086
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getTransactionSignersFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    .line 18087
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$TransactionSigner;

    move-result-object v1

    .line 18086
    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;

    return-object v0
.end method

.method public addTransactionSignersBuilder(I)Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;
    .locals 2

    .line 18098
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getTransactionSignersFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    .line 18099
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$TransactionSigner;

    move-result-object v1

    .line 18098
    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;

    return-object p1
.end method

.method public addWatchedScript(ILorg/bitcoinj/wallet/Protos$Script$Builder;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    .line 16857
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScriptBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 16858
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureWatchedScriptIsMutable()V

    .line 16859
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScript_:Ljava/util/List;

    invoke-virtual {p2}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->build()Lorg/bitcoinj/wallet/Protos$Script;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 16860
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    goto :goto_0

    .line 16862
    :cond_0
    invoke-virtual {p2}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->build()Lorg/bitcoinj/wallet/Protos$Script;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public addWatchedScript(ILorg/bitcoinj/wallet/Protos$Script;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    .line 16826
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScriptBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 16830
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureWatchedScriptIsMutable()V

    .line 16831
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScript_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 16832
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 16828
    throw p1

    .line 16834
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public addWatchedScript(Lorg/bitcoinj/wallet/Protos$Script$Builder;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    .line 16843
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScriptBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 16844
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureWatchedScriptIsMutable()V

    .line 16845
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScript_:Ljava/util/List;

    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->build()Lorg/bitcoinj/wallet/Protos$Script;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16846
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    goto :goto_0

    .line 16848
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->build()Lorg/bitcoinj/wallet/Protos$Script;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public addWatchedScript(Lorg/bitcoinj/wallet/Protos$Script;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    .line 16809
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScriptBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 16813
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureWatchedScriptIsMutable()V

    .line 16814
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScript_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16815
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 16811
    throw p1

    .line 16817
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public addWatchedScriptBuilder()Lorg/bitcoinj/wallet/Protos$Script$Builder;
    .locals 2

    .line 16939
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getWatchedScriptFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    .line 16940
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Script;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$Script;

    move-result-object v1

    .line 16939
    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Script$Builder;

    return-object v0
.end method

.method public addWatchedScriptBuilder(I)Lorg/bitcoinj/wallet/Protos$Script$Builder;
    .locals 2

    .line 16947
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getWatchedScriptFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    .line 16948
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Script;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$Script;

    move-result-object v1

    .line 16947
    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/Protos$Script$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 15522
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->build()Lorg/bitcoinj/wallet/Protos$Wallet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 15522
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->build()Lorg/bitcoinj/wallet/Protos$Wallet;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/bitcoinj/wallet/Protos$Wallet;
    .locals 2

    .line 15640
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$Wallet;

    move-result-object v0

    .line 15641
    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$Wallet;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 15642
    :cond_0
    invoke-static {v0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 15522
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$Wallet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 15522
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$Wallet;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lorg/bitcoinj/wallet/Protos$Wallet;
    .locals 6

    .line 15648
    new-instance v0, Lorg/bitcoinj/wallet/Protos$Wallet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bitcoinj/wallet/Protos$Wallet;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoinj/wallet/Protos$1;)V

    .line 15649
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 15654
    :goto_0
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->networkIdentifier_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$17602(Lorg/bitcoinj/wallet/Protos$Wallet;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 15658
    :cond_1
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->lastSeenBlockHash_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v2}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$17702(Lorg/bitcoinj/wallet/Protos$Wallet;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 15662
    :cond_2
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->lastSeenBlockHeight_:I

    invoke-static {v0, v2}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$17802(Lorg/bitcoinj/wallet/Protos$Wallet;I)I

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    .line 15666
    :cond_3
    iget-wide v4, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->lastSeenBlockTimeSecs_:J

    invoke-static {v0, v4, v5}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$17902(Lorg/bitcoinj/wallet/Protos$Wallet;J)J

    .line 15667
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->keyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v2, :cond_5

    .line 15668
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    const/16 v4, 0x10

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_4

    .line 15669
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->key_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->key_:Ljava/util/List;

    .line 15670
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x11

    iput v2, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 15672
    :cond_4
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->key_:Ljava/util/List;

    invoke-static {v0, v2}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$18002(Lorg/bitcoinj/wallet/Protos$Wallet;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    .line 15674
    :cond_5
    invoke-virtual {v2}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$18002(Lorg/bitcoinj/wallet/Protos$Wallet;Ljava/util/List;)Ljava/util/List;

    .line 15676
    :goto_1
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v2, :cond_7

    .line 15677
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    const/16 v4, 0x20

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_6

    .line 15678
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transaction_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transaction_:Ljava/util/List;

    .line 15679
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x21

    iput v2, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 15681
    :cond_6
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transaction_:Ljava/util/List;

    invoke-static {v0, v2}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$18102(Lorg/bitcoinj/wallet/Protos$Wallet;Ljava/util/List;)Ljava/util/List;

    goto :goto_2

    .line 15683
    :cond_7
    invoke-virtual {v2}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$18102(Lorg/bitcoinj/wallet/Protos$Wallet;Ljava/util/List;)Ljava/util/List;

    .line 15685
    :goto_2
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScriptBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v2, :cond_9

    .line 15686
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    const/16 v4, 0x40

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_8

    .line 15687
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScript_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScript_:Ljava/util/List;

    .line 15688
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x41

    iput v2, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 15690
    :cond_8
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScript_:Ljava/util/List;

    invoke-static {v0, v2}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$18202(Lorg/bitcoinj/wallet/Protos$Wallet;Ljava/util/List;)Ljava/util/List;

    goto :goto_3

    .line 15692
    :cond_9
    invoke-virtual {v2}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$18202(Lorg/bitcoinj/wallet/Protos$Wallet;Ljava/util/List;)Ljava/util/List;

    :goto_3
    and-int/lit16 v2, v1, 0x80

    const/16 v4, 0x80

    if-ne v2, v4, :cond_a

    or-int/lit8 v3, v3, 0x10

    .line 15697
    :cond_a
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->encryptionType_:Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

    invoke-static {v0, v2}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$18302(Lorg/bitcoinj/wallet/Protos$Wallet;Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;)Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

    and-int/lit16 v2, v1, 0x100

    const/16 v4, 0x100

    if-ne v2, v4, :cond_b

    or-int/lit8 v3, v3, 0x20

    .line 15701
    :cond_b
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->encryptionParametersBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v2, :cond_c

    .line 15702
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->encryptionParameters_:Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    invoke-static {v0, v2}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$18402(Lorg/bitcoinj/wallet/Protos$Wallet;Lorg/bitcoinj/wallet/Protos$ScryptParameters;)Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    goto :goto_4

    .line 15704
    :cond_c
    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    invoke-static {v0, v2}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$18402(Lorg/bitcoinj/wallet/Protos$Wallet;Lorg/bitcoinj/wallet/Protos$ScryptParameters;)Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    :goto_4
    and-int/lit16 v2, v1, 0x200

    const/16 v4, 0x200

    if-ne v2, v4, :cond_d

    or-int/lit8 v3, v3, 0x40

    .line 15709
    :cond_d
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->version_:I

    invoke-static {v0, v2}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$18502(Lorg/bitcoinj/wallet/Protos$Wallet;I)I

    .line 15710
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extensionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v2, :cond_f

    .line 15711
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    const/16 v4, 0x400

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_e

    .line 15712
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extension_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extension_:Ljava/util/List;

    .line 15713
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit16 v2, v2, -0x401

    iput v2, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 15715
    :cond_e
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extension_:Ljava/util/List;

    invoke-static {v0, v2}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$18602(Lorg/bitcoinj/wallet/Protos$Wallet;Ljava/util/List;)Ljava/util/List;

    goto :goto_5

    .line 15717
    :cond_f
    invoke-virtual {v2}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$18602(Lorg/bitcoinj/wallet/Protos$Wallet;Ljava/util/List;)Ljava/util/List;

    :goto_5
    and-int/lit16 v2, v1, 0x800

    const/16 v4, 0x800

    if-ne v2, v4, :cond_10

    or-int/lit16 v3, v3, 0x80

    .line 15722
    :cond_10
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->description_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$18702(Lorg/bitcoinj/wallet/Protos$Wallet;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x1000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_11

    or-int/lit16 v3, v3, 0x100

    .line 15726
    :cond_11
    iget-wide v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->keyRotationTime_:J

    invoke-static {v0, v1, v2}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$18802(Lorg/bitcoinj/wallet/Protos$Wallet;J)J

    .line 15727
    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->tagsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_13

    .line 15728
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    const/16 v2, 0x2000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_12

    .line 15729
    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->tags_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->tags_:Ljava/util/List;

    .line 15730
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x2001

    iput v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 15732
    :cond_12
    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->tags_:Ljava/util/List;

    invoke-static {v0, v1}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$18902(Lorg/bitcoinj/wallet/Protos$Wallet;Ljava/util/List;)Ljava/util/List;

    goto :goto_6

    .line 15734
    :cond_13
    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$18902(Lorg/bitcoinj/wallet/Protos$Wallet;Ljava/util/List;)Ljava/util/List;

    .line 15736
    :goto_6
    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionSignersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_15

    .line 15737
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    const/16 v2, 0x4000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_14

    .line 15738
    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionSigners_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionSigners_:Ljava/util/List;

    .line 15739
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x4001

    iput v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 15741
    :cond_14
    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionSigners_:Ljava/util/List;

    invoke-static {v0, v1}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$19002(Lorg/bitcoinj/wallet/Protos$Wallet;Ljava/util/List;)Ljava/util/List;

    goto :goto_7

    .line 15743
    :cond_15
    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$19002(Lorg/bitcoinj/wallet/Protos$Wallet;Ljava/util/List;)Ljava/util/List;

    .line 15745
    :goto_7
    invoke-static {v0, v3}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$19102(Lorg/bitcoinj/wallet/Protos$Wallet;I)I

    .line 15746
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 15522
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->clear()Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 15522
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->clear()Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 15522
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->clear()Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 15522
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->clear()Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 5

    .line 15564
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    const-string v0, ""

    .line 15565
    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->networkIdentifier_:Ljava/lang/Object;

    .line 15566
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 15567
    sget-object v1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->lastSeenBlockHash_:Lcom/google/protobuf/ByteString;

    .line 15568
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    const/4 v2, 0x0

    .line 15569
    iput v2, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->lastSeenBlockHeight_:I

    and-int/lit8 v1, v1, -0x5

    .line 15570
    iput v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    const-wide/16 v2, 0x0

    .line 15571
    iput-wide v2, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->lastSeenBlockTimeSecs_:J

    and-int/lit8 v1, v1, -0x9

    .line 15572
    iput v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 15573
    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->keyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_0

    .line 15574
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->key_:Ljava/util/List;

    .line 15575
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    goto :goto_0

    .line 15577
    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    .line 15579
    :goto_0
    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_1

    .line 15580
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transaction_:Ljava/util/List;

    .line 15581
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    goto :goto_1

    .line 15583
    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    .line 15585
    :goto_1
    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScriptBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_2

    .line 15586
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScript_:Ljava/util/List;

    .line 15587
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x41

    iput v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    goto :goto_2

    .line 15589
    :cond_2
    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    .line 15591
    :goto_2
    sget-object v1, Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;->UNENCRYPTED:Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

    iput-object v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->encryptionType_:Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

    .line 15592
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x81

    iput v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 15593
    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->encryptionParametersBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v1, :cond_3

    .line 15594
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    move-result-object v1

    iput-object v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->encryptionParameters_:Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    goto :goto_3

    .line 15596
    :cond_3
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 15598
    :goto_3
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x101

    iput v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    const/4 v4, 0x1

    .line 15599
    iput v4, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->version_:I

    and-int/lit16 v1, v1, -0x201

    .line 15600
    iput v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 15601
    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extensionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_4

    .line 15602
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extension_:Ljava/util/List;

    .line 15603
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x401

    iput v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    goto :goto_4

    .line 15605
    :cond_4
    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    .line 15607
    :goto_4
    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->description_:Ljava/lang/Object;

    .line 15608
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 15609
    iput-wide v2, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->keyRotationTime_:J

    and-int/lit16 v0, v0, -0x1001

    .line 15610
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 15611
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->tagsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_5

    .line 15612
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->tags_:Ljava/util/List;

    .line 15613
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    goto :goto_5

    .line 15615
    :cond_5
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    .line 15617
    :goto_5
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionSignersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_6

    .line 15618
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionSigners_:Ljava/util/List;

    .line 15619
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    goto :goto_6

    .line 15621
    :cond_6
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    :goto_6
    return-object p0
.end method

.method public clearDescription()Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    .line 17496
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 17497
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Wallet;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$Wallet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$Wallet;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->description_:Ljava/lang/Object;

    .line 17498
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    return-object p0
.end method

.method public clearEncryptionParameters()Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    .line 17079
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->encryptionParametersBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 17080
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->encryptionParameters_:Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    .line 17081
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    goto :goto_0

    .line 17083
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 17085
    :goto_0
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearEncryptionType()Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    .line 17001
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 17002
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;->UNENCRYPTED:Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->encryptionType_:Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

    .line 17003
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    return-object p0
.end method

.method public clearExtension()Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    .line 17332
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extensionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 17333
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extension_:Ljava/util/List;

    .line 17334
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 17335
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    goto :goto_0

    .line 17337
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    :goto_0
    return-object p0
.end method

.method public clearKey()Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    .line 16405
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->keyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 16406
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->key_:Ljava/util/List;

    .line 16407
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 16408
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    goto :goto_0

    .line 16410
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    :goto_0
    return-object p0
.end method

.method public clearKeyRotationTime()Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 2

    .line 17569
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 17570
    iput-wide v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->keyRotationTime_:J

    .line 17571
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    return-object p0
.end method

.method public clearLastSeenBlockHash()Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    .line 16166
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 16167
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Wallet;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$Wallet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$Wallet;->getLastSeenBlockHash()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->lastSeenBlockHash_:Lcom/google/protobuf/ByteString;

    .line 16168
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    return-object p0
.end method

.method public clearLastSeenBlockHeight()Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    .line 16214
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 16215
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->lastSeenBlockHeight_:I

    .line 16216
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    return-object p0
.end method

.method public clearLastSeenBlockTimeSecs()Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 2

    .line 16246
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 16247
    iput-wide v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->lastSeenBlockTimeSecs_:J

    .line 16248
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    return-object p0
.end method

.method public clearNetworkIdentifier()Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    .line 16098
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 16099
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Wallet;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$Wallet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$Wallet;->getNetworkIdentifier()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->networkIdentifier_:Ljava/lang/Object;

    .line 16100
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    return-object p0
.end method

.method public clearTags()Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    .line 17728
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->tagsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 17729
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->tags_:Ljava/util/List;

    .line 17730
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 17731
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    goto :goto_0

    .line 17733
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    :goto_0
    return-object p0
.end method

.method public clearTransaction()Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    .line 16645
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 16646
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transaction_:Ljava/util/List;

    .line 16647
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 16648
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    goto :goto_0

    .line 16650
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    :goto_0
    return-object p0
.end method

.method public clearTransactionSigners()Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    .line 18012
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionSignersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 18013
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionSigners_:Ljava/util/List;

    .line 18014
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 18015
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    goto :goto_0

    .line 18017
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    :goto_0
    return-object p0
.end method

.method public clearVersion()Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    .line 17173
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    const/4 v0, 0x1

    .line 17174
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->version_:I

    .line 17175
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    return-object p0
.end method

.method public clearWatchedScript()Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    .line 16885
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScriptBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 16886
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScript_:Ljava/util/List;

    .line 16887
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 16888
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    goto :goto_0

    .line 16890
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    :goto_0
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 15522
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->clone()Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 15522
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->clone()Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 15522
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->clone()Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 15522
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->clone()Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 15522
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->clone()Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

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

    .line 15522
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->clone()Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 2

    .line 15627
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->create()Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$Wallet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$Wallet;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 15522
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$Wallet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 15522
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$Wallet;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$Wallet;
    .locals 1

    .line 15636
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Wallet;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$Wallet;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    .line 17438
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->description_:Ljava/lang/Object;

    .line 17439
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 17440
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 17442
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 17443
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17444
    iput-object v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->description_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 17448
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDescriptionBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 17460
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->description_:Ljava/lang/Object;

    .line 17461
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 17462
    check-cast v0, Ljava/lang/String;

    .line 17463
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 17465
    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->description_:Ljava/lang/Object;

    return-object v0

    .line 17468
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 15632
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$16900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getEncryptionParameters()Lorg/bitcoinj/wallet/Protos$ScryptParameters;
    .locals 1

    .line 17020
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->encryptionParametersBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 17021
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->encryptionParameters_:Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    return-object v0

    .line 17023
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    return-object v0
.end method

.method public getEncryptionParametersBuilder()Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;
    .locals 1

    .line 17092
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 17093
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    .line 17094
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getEncryptionParametersFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    return-object v0
.end method

.method public getEncryptionParametersOrBuilder()Lorg/bitcoinj/wallet/Protos$ScryptParametersOrBuilder;
    .locals 1

    .line 17100
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->encryptionParametersBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 17101
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$ScryptParametersOrBuilder;

    return-object v0

    .line 17103
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->encryptionParameters_:Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    return-object v0
.end method

.method public getEncryptionType()Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;
    .locals 1

    .line 16983
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->encryptionType_:Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

    return-object v0
.end method

.method public getExtension(I)Lorg/bitcoinj/wallet/Protos$Extension;
    .locals 1

    .line 17215
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extensionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 17216
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extension_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/Protos$Extension;

    return-object p1

    .line 17218
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/Protos$Extension;

    return-object p1
.end method

.method public getExtensionBuilder(I)Lorg/bitcoinj/wallet/Protos$Extension$Builder;
    .locals 1

    .line 17359
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getExtensionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/Protos$Extension$Builder;

    return-object p1
.end method

.method public getExtensionBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bitcoinj/wallet/Protos$Extension$Builder;",
            ">;"
        }
    .end annotation

    .line 17402
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getExtensionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getExtensionCount()I
    .locals 1

    .line 17205
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extensionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 17206
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extension_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 17208
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    return v0
.end method

.method public getExtensionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bitcoinj/wallet/Protos$Extension;",
            ">;"
        }
    .end annotation

    .line 17195
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extensionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 17196
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extension_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 17198
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getExtensionOrBuilder(I)Lorg/bitcoinj/wallet/Protos$ExtensionOrBuilder;
    .locals 1

    .line 17366
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extensionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 17367
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extension_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/Protos$ExtensionOrBuilder;

    return-object p1

    .line 17368
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/Protos$ExtensionOrBuilder;

    return-object p1
.end method

.method public getExtensionOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/bitcoinj/wallet/Protos$ExtensionOrBuilder;",
            ">;"
        }
    .end annotation

    .line 17376
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extensionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 17377
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 17379
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extension_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getKey(I)Lorg/bitcoinj/wallet/Protos$Key;
    .locals 1

    .line 16288
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->keyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 16289
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->key_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/Protos$Key;

    return-object p1

    .line 16291
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/Protos$Key;

    return-object p1
.end method

.method public getKeyBuilder(I)Lorg/bitcoinj/wallet/Protos$Key$Builder;
    .locals 1

    .line 16432
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getKeyFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/Protos$Key$Builder;

    return-object p1
.end method

.method public getKeyBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bitcoinj/wallet/Protos$Key$Builder;",
            ">;"
        }
    .end annotation

    .line 16475
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getKeyFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getKeyCount()I
    .locals 1

    .line 16278
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->keyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 16279
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->key_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 16281
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    return v0
.end method

.method public getKeyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bitcoinj/wallet/Protos$Key;",
            ">;"
        }
    .end annotation

    .line 16268
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->keyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 16269
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->key_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 16271
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getKeyOrBuilder(I)Lorg/bitcoinj/wallet/Protos$KeyOrBuilder;
    .locals 1

    .line 16439
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->keyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 16440
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->key_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/Protos$KeyOrBuilder;

    return-object p1

    .line 16441
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/Protos$KeyOrBuilder;

    return-object p1
.end method

.method public getKeyOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/bitcoinj/wallet/Protos$KeyOrBuilder;",
            ">;"
        }
    .end annotation

    .line 16449
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->keyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 16450
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 16452
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->key_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getKeyRotationTime()J
    .locals 2

    .line 17542
    iget-wide v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->keyRotationTime_:J

    return-wide v0
.end method

.method public getLastSeenBlockHash()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 16140
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->lastSeenBlockHash_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getLastSeenBlockHeight()I
    .locals 1

    .line 16191
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->lastSeenBlockHeight_:I

    return v0
.end method

.method public getLastSeenBlockTimeSecs()J
    .locals 2

    .line 16231
    iget-wide v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->lastSeenBlockTimeSecs_:J

    return-wide v0
.end method

.method public getNetworkIdentifier()Ljava/lang/String;
    .locals 2

    .line 16040
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->networkIdentifier_:Ljava/lang/Object;

    .line 16041
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 16042
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 16044
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 16045
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16046
    iput-object v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->networkIdentifier_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 16050
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkIdentifierBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 16062
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->networkIdentifier_:Ljava/lang/Object;

    .line 16063
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 16064
    check-cast v0, Ljava/lang/String;

    .line 16065
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 16067
    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->networkIdentifier_:Ljava/lang/Object;

    return-object v0

    .line 16070
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getTags(I)Lorg/bitcoinj/wallet/Protos$Tag;
    .locals 1

    .line 17611
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->tagsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 17612
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->tags_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/Protos$Tag;

    return-object p1

    .line 17614
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/Protos$Tag;

    return-object p1
.end method

.method public getTagsBuilder(I)Lorg/bitcoinj/wallet/Protos$Tag$Builder;
    .locals 1

    .line 17755
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getTagsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/Protos$Tag$Builder;

    return-object p1
.end method

.method public getTagsBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bitcoinj/wallet/Protos$Tag$Builder;",
            ">;"
        }
    .end annotation

    .line 17798
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getTagsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTagsCount()I
    .locals 1

    .line 17601
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->tagsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 17602
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->tags_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 17604
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    return v0
.end method

.method public getTagsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bitcoinj/wallet/Protos$Tag;",
            ">;"
        }
    .end annotation

    .line 17591
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->tagsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 17592
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->tags_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 17594
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTagsOrBuilder(I)Lorg/bitcoinj/wallet/Protos$TagOrBuilder;
    .locals 1

    .line 17762
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->tagsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 17763
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->tags_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/Protos$TagOrBuilder;

    return-object p1

    .line 17764
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/Protos$TagOrBuilder;

    return-object p1
.end method

.method public getTagsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/bitcoinj/wallet/Protos$TagOrBuilder;",
            ">;"
        }
    .end annotation

    .line 17772
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->tagsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 17773
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 17775
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->tags_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTransaction(I)Lorg/bitcoinj/wallet/Protos$Transaction;
    .locals 1

    .line 16528
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 16529
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transaction_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/Protos$Transaction;

    return-object p1

    .line 16531
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/Protos$Transaction;

    return-object p1
.end method

.method public getTransactionBuilder(I)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1

    .line 16672
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getTransactionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    return-object p1
.end method

.method public getTransactionBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bitcoinj/wallet/Protos$Transaction$Builder;",
            ">;"
        }
    .end annotation

    .line 16715
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getTransactionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTransactionCount()I
    .locals 1

    .line 16518
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 16519
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transaction_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 16521
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    return v0
.end method

.method public getTransactionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bitcoinj/wallet/Protos$Transaction;",
            ">;"
        }
    .end annotation

    .line 16508
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 16509
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transaction_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 16511
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTransactionOrBuilder(I)Lorg/bitcoinj/wallet/Protos$TransactionOrBuilder;
    .locals 1

    .line 16679
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 16680
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transaction_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/Protos$TransactionOrBuilder;

    return-object p1

    .line 16681
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/Protos$TransactionOrBuilder;

    return-object p1
.end method

.method public getTransactionOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/bitcoinj/wallet/Protos$TransactionOrBuilder;",
            ">;"
        }
    .end annotation

    .line 16689
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 16690
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 16692
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transaction_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTransactionSigners(I)Lorg/bitcoinj/wallet/Protos$TransactionSigner;
    .locals 1

    .line 17863
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionSignersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 17864
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionSigners_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/Protos$TransactionSigner;

    return-object p1

    .line 17866
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/Protos$TransactionSigner;

    return-object p1
.end method

.method public getTransactionSignersBuilder(I)Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;
    .locals 1

    .line 18047
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getTransactionSignersFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;

    return-object p1
.end method

.method public getTransactionSignersBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;",
            ">;"
        }
    .end annotation

    .line 18110
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getTransactionSignersFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTransactionSignersCount()I
    .locals 1

    .line 17849
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionSignersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 17850
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionSigners_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 17852
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    return v0
.end method

.method public getTransactionSignersList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bitcoinj/wallet/Protos$TransactionSigner;",
            ">;"
        }
    .end annotation

    .line 17835
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionSignersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 17836
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionSigners_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 17838
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTransactionSignersOrBuilder(I)Lorg/bitcoinj/wallet/Protos$TransactionSignerOrBuilder;
    .locals 1

    .line 18058
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionSignersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 18059
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionSigners_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/Protos$TransactionSignerOrBuilder;

    return-object p1

    .line 18060
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/Protos$TransactionSignerOrBuilder;

    return-object p1
.end method

.method public getTransactionSignersOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/bitcoinj/wallet/Protos$TransactionSignerOrBuilder;",
            ">;"
        }
    .end annotation

    .line 18072
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionSignersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 18073
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 18075
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionSigners_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 17146
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->version_:I

    return v0
.end method

.method public getWatchedScript(I)Lorg/bitcoinj/wallet/Protos$Script;
    .locals 1

    .line 16768
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScriptBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 16769
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScript_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/Protos$Script;

    return-object p1

    .line 16771
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/Protos$Script;

    return-object p1
.end method

.method public getWatchedScriptBuilder(I)Lorg/bitcoinj/wallet/Protos$Script$Builder;
    .locals 1

    .line 16912
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getWatchedScriptFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/Protos$Script$Builder;

    return-object p1
.end method

.method public getWatchedScriptBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bitcoinj/wallet/Protos$Script$Builder;",
            ">;"
        }
    .end annotation

    .line 16955
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getWatchedScriptFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getWatchedScriptCount()I
    .locals 1

    .line 16758
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScriptBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 16759
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScript_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 16761
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    return v0
.end method

.method public getWatchedScriptList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bitcoinj/wallet/Protos$Script;",
            ">;"
        }
    .end annotation

    .line 16748
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScriptBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 16749
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScript_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 16751
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getWatchedScriptOrBuilder(I)Lorg/bitcoinj/wallet/Protos$ScriptOrBuilder;
    .locals 1

    .line 16919
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScriptBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 16920
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScript_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/Protos$ScriptOrBuilder;

    return-object p1

    .line 16921
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/Protos$ScriptOrBuilder;

    return-object p1
.end method

.method public getWatchedScriptOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/bitcoinj/wallet/Protos$ScriptOrBuilder;",
            ">;"
        }
    .end annotation

    .line 16929
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScriptBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 16930
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 16932
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScript_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasDescription()Z
    .locals 2

    .line 17428
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    const/16 v1, 0x800

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasEncryptionParameters()Z
    .locals 2

    .line 17014
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasEncryptionType()Z
    .locals 2

    .line 16977
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasKeyRotationTime()Z
    .locals 2

    .line 17530
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    const/16 v1, 0x1000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLastSeenBlockHash()Z
    .locals 2

    .line 16130
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLastSeenBlockHeight()Z
    .locals 2

    .line 16181
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLastSeenBlockTimeSecs()Z
    .locals 2

    .line 16225
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasNetworkIdentifier()Z
    .locals 2

    .line 16030
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasVersion()Z
    .locals 2

    .line 17134
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .line 15533
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$17000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoinj/wallet/Protos$Wallet;

    const-class v2, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    .line 15534
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .line 15953
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->hasNetworkIdentifier()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 15957
    :goto_0
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getKeyCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 15958
    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getKey(I)Lorg/bitcoinj/wallet/Protos$Key;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bitcoinj/wallet/Protos$Key;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 15963
    :goto_1
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getTransactionCount()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 15964
    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getTransaction(I)Lorg/bitcoinj/wallet/Protos$Transaction;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bitcoinj/wallet/Protos$Transaction;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    .line 15969
    :goto_2
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getWatchedScriptCount()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 15970
    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getWatchedScript(I)Lorg/bitcoinj/wallet/Protos$Script;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bitcoinj/wallet/Protos$Script;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 15975
    :cond_6
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->hasEncryptionParameters()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 15976
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getEncryptionParameters()Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x0

    .line 15981
    :goto_3
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getExtensionCount()I

    move-result v2

    if-ge v0, v2, :cond_9

    .line 15982
    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getExtension(I)Lorg/bitcoinj/wallet/Protos$Extension;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bitcoinj/wallet/Protos$Extension;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_9
    const/4 v0, 0x0

    .line 15987
    :goto_4
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getTagsCount()I

    move-result v2

    if-ge v0, v2, :cond_b

    .line 15988
    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getTags(I)Lorg/bitcoinj/wallet/Protos$Tag;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bitcoinj/wallet/Protos$Tag;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_b
    const/4 v0, 0x0

    .line 15993
    :goto_5
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getTransactionSignersCount()I

    move-result v2

    if-ge v0, v2, :cond_d

    .line 15994
    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getTransactionSigners(I)Lorg/bitcoinj/wallet/Protos$TransactionSigner;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_c

    return v1

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_d
    const/4 v0, 0x1

    return v0
.end method

.method public mergeEncryptionParameters(Lorg/bitcoinj/wallet/Protos$ScryptParameters;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 3

    .line 17060
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->encryptionParametersBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/16 v1, 0x100

    if-nez v0, :cond_1

    .line 17061
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->encryptionParameters_:Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    .line 17062
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 17063
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->encryptionParameters_:Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    .line 17064
    invoke-static {v0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->newBuilder(Lorg/bitcoinj/wallet/Protos$ScryptParameters;)Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$ScryptParameters;)Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->encryptionParameters_:Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    goto :goto_0

    .line 17066
    :cond_0
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->encryptionParameters_:Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    .line 17068
    :goto_0
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    goto :goto_1

    .line 17070
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 17072
    :goto_1
    iget p1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15522
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 15522
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

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

    .line 15522
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

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

    .line 15522
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 15522
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

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

    .line 15522
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 16008
    :try_start_0
    sget-object v1, Lorg/bitcoinj/wallet/Protos$Wallet;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/Protos$Wallet;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 16014
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$Wallet;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 16010
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lorg/bitcoinj/wallet/Protos$Wallet;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16011
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 16014
    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$Wallet;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    .line 15751
    instance-of v0, p1, Lorg/bitcoinj/wallet/Protos$Wallet;

    if-eqz v0, :cond_0

    .line 15752
    check-cast p1, Lorg/bitcoinj/wallet/Protos$Wallet;

    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$Wallet;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    move-result-object p1

    return-object p1

    .line 15754
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lorg/bitcoinj/wallet/Protos$Wallet;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 4

    .line 15760
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Wallet;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$Wallet;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 15761
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->hasNetworkIdentifier()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15762
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 15763
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$17600(Lorg/bitcoinj/wallet/Protos$Wallet;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->networkIdentifier_:Ljava/lang/Object;

    .line 15764
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    .line 15766
    :cond_1
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->hasLastSeenBlockHash()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 15767
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->getLastSeenBlockHash()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->setLastSeenBlockHash(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    .line 15769
    :cond_2
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->hasLastSeenBlockHeight()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 15770
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->getLastSeenBlockHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->setLastSeenBlockHeight(I)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    .line 15772
    :cond_3
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->hasLastSeenBlockTimeSecs()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 15773
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->getLastSeenBlockTimeSecs()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->setLastSeenBlockTimeSecs(J)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    .line 15775
    :cond_4
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->keyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 15776
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$18000(Lorg/bitcoinj/wallet/Protos$Wallet;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 15777
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->key_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 15778
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$18000(Lorg/bitcoinj/wallet/Protos$Wallet;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->key_:Ljava/util/List;

    .line 15779
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    goto :goto_0

    .line 15781
    :cond_5
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureKeyIsMutable()V

    .line 15782
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->key_:Ljava/util/List;

    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$18000(Lorg/bitcoinj/wallet/Protos$Wallet;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 15784
    :goto_0
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    goto :goto_2

    .line 15787
    :cond_6
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$18000(Lorg/bitcoinj/wallet/Protos$Wallet;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 15788
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->keyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 15789
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->keyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 15790
    iput-object v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->keyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 15791
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$18000(Lorg/bitcoinj/wallet/Protos$Wallet;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->key_:Ljava/util/List;

    .line 15792
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 15794
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$19200()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 15795
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getKeyFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    goto :goto_1

    :cond_7
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->keyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2

    .line 15797
    :cond_8
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->keyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$18000(Lorg/bitcoinj/wallet/Protos$Wallet;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 15801
    :cond_9
    :goto_2
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_b

    .line 15802
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$18100(Lorg/bitcoinj/wallet/Protos$Wallet;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 15803
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transaction_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 15804
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$18100(Lorg/bitcoinj/wallet/Protos$Wallet;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transaction_:Ljava/util/List;

    .line 15805
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    goto :goto_3

    .line 15807
    :cond_a
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureTransactionIsMutable()V

    .line 15808
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transaction_:Ljava/util/List;

    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$18100(Lorg/bitcoinj/wallet/Protos$Wallet;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 15810
    :goto_3
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    goto :goto_5

    .line 15813
    :cond_b
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$18100(Lorg/bitcoinj/wallet/Protos$Wallet;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 15814
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 15815
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 15816
    iput-object v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 15817
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$18100(Lorg/bitcoinj/wallet/Protos$Wallet;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transaction_:Ljava/util/List;

    .line 15818
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 15820
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$19300()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 15821
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getTransactionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    goto :goto_4

    :cond_c
    move-object v0, v1

    :goto_4
    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_5

    .line 15823
    :cond_d
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$18100(Lorg/bitcoinj/wallet/Protos$Wallet;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 15827
    :cond_e
    :goto_5
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScriptBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_10

    .line 15828
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$18200(Lorg/bitcoinj/wallet/Protos$Wallet;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 15829
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScript_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 15830
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$18200(Lorg/bitcoinj/wallet/Protos$Wallet;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScript_:Ljava/util/List;

    .line 15831
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    goto :goto_6

    .line 15833
    :cond_f
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureWatchedScriptIsMutable()V

    .line 15834
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScript_:Ljava/util/List;

    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$18200(Lorg/bitcoinj/wallet/Protos$Wallet;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 15836
    :goto_6
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    goto :goto_8

    .line 15839
    :cond_10
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$18200(Lorg/bitcoinj/wallet/Protos$Wallet;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 15840
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScriptBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 15841
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScriptBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 15842
    iput-object v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScriptBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 15843
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$18200(Lorg/bitcoinj/wallet/Protos$Wallet;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScript_:Ljava/util/List;

    .line 15844
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 15846
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$19400()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 15847
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getWatchedScriptFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    goto :goto_7

    :cond_11
    move-object v0, v1

    :goto_7
    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScriptBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_8

    .line 15849
    :cond_12
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScriptBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$18200(Lorg/bitcoinj/wallet/Protos$Wallet;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 15853
    :cond_13
    :goto_8
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->hasEncryptionType()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 15854
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->getEncryptionType()Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->setEncryptionType(Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    .line 15856
    :cond_14
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->hasEncryptionParameters()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 15857
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->getEncryptionParameters()Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->mergeEncryptionParameters(Lorg/bitcoinj/wallet/Protos$ScryptParameters;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    .line 15859
    :cond_15
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->hasVersion()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 15860
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->getVersion()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->setVersion(I)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    .line 15862
    :cond_16
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extensionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_18

    .line 15863
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$18600(Lorg/bitcoinj/wallet/Protos$Wallet;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 15864
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extension_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 15865
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$18600(Lorg/bitcoinj/wallet/Protos$Wallet;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extension_:Ljava/util/List;

    .line 15866
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    goto :goto_9

    .line 15868
    :cond_17
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureExtensionIsMutable()V

    .line 15869
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extension_:Ljava/util/List;

    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$18600(Lorg/bitcoinj/wallet/Protos$Wallet;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 15871
    :goto_9
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    goto :goto_b

    .line 15874
    :cond_18
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$18600(Lorg/bitcoinj/wallet/Protos$Wallet;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 15875
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extensionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 15876
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extensionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 15877
    iput-object v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extensionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 15878
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$18600(Lorg/bitcoinj/wallet/Protos$Wallet;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extension_:Ljava/util/List;

    .line 15879
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 15881
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$19500()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 15882
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getExtensionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    goto :goto_a

    :cond_19
    move-object v0, v1

    :goto_a
    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extensionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_b

    .line 15884
    :cond_1a
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extensionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$18600(Lorg/bitcoinj/wallet/Protos$Wallet;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 15888
    :cond_1b
    :goto_b
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->hasDescription()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 15889
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 15890
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$18700(Lorg/bitcoinj/wallet/Protos$Wallet;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->description_:Ljava/lang/Object;

    .line 15891
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    .line 15893
    :cond_1c
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->hasKeyRotationTime()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 15894
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->getKeyRotationTime()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->setKeyRotationTime(J)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    .line 15896
    :cond_1d
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->tagsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1f

    .line 15897
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$18900(Lorg/bitcoinj/wallet/Protos$Wallet;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    .line 15898
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->tags_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 15899
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$18900(Lorg/bitcoinj/wallet/Protos$Wallet;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->tags_:Ljava/util/List;

    .line 15900
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    goto :goto_c

    .line 15902
    :cond_1e
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureTagsIsMutable()V

    .line 15903
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->tags_:Ljava/util/List;

    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$18900(Lorg/bitcoinj/wallet/Protos$Wallet;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 15905
    :goto_c
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    goto :goto_e

    .line 15908
    :cond_1f
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$18900(Lorg/bitcoinj/wallet/Protos$Wallet;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    .line 15909
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->tagsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 15910
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->tagsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 15911
    iput-object v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->tagsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 15912
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$18900(Lorg/bitcoinj/wallet/Protos$Wallet;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->tags_:Ljava/util/List;

    .line 15913
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 15915
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$19600()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 15916
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getTagsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    goto :goto_d

    :cond_20
    move-object v0, v1

    :goto_d
    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->tagsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_e

    .line 15918
    :cond_21
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->tagsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$18900(Lorg/bitcoinj/wallet/Protos$Wallet;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 15922
    :cond_22
    :goto_e
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionSignersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_24

    .line 15923
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$19000(Lorg/bitcoinj/wallet/Protos$Wallet;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_27

    .line 15924
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionSigners_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 15925
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$19000(Lorg/bitcoinj/wallet/Protos$Wallet;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionSigners_:Ljava/util/List;

    .line 15926
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    goto :goto_f

    .line 15928
    :cond_23
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureTransactionSignersIsMutable()V

    .line 15929
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionSigners_:Ljava/util/List;

    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$19000(Lorg/bitcoinj/wallet/Protos$Wallet;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 15931
    :goto_f
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    goto :goto_10

    .line 15934
    :cond_24
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$19000(Lorg/bitcoinj/wallet/Protos$Wallet;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_27

    .line 15935
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionSignersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 15936
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionSignersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 15937
    iput-object v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionSignersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 15938
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$19000(Lorg/bitcoinj/wallet/Protos$Wallet;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionSigners_:Ljava/util/List;

    .line 15939
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 15941
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$19700()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 15942
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getTransactionSignersFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v1

    :cond_25
    iput-object v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionSignersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_10

    .line 15944
    :cond_26
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionSignersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$19000(Lorg/bitcoinj/wallet/Protos$Wallet;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 15948
    :cond_27
    :goto_10
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    return-object p0
.end method

.method public removeExtension(I)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    .line 17345
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extensionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 17346
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureExtensionIsMutable()V

    .line 17347
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extension_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 17348
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    goto :goto_0

    .line 17350
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public removeKey(I)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    .line 16418
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->keyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 16419
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureKeyIsMutable()V

    .line 16420
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->key_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 16421
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    goto :goto_0

    .line 16423
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public removeTags(I)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    .line 17741
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->tagsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 17742
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureTagsIsMutable()V

    .line 17743
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->tags_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 17744
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    goto :goto_0

    .line 17746
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public removeTransaction(I)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    .line 16658
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 16659
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureTransactionIsMutable()V

    .line 16660
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transaction_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 16661
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    goto :goto_0

    .line 16663
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public removeTransactionSigners(I)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    .line 18029
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionSignersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 18030
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureTransactionSignersIsMutable()V

    .line 18031
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionSigners_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 18032
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    goto :goto_0

    .line 18034
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public removeWatchedScript(I)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    .line 16898
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScriptBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 16899
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureWatchedScriptIsMutable()V

    .line 16900
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScript_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 16901
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    goto :goto_0

    .line 16903
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 17483
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 17484
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->description_:Ljava/lang/Object;

    .line 17485
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 17481
    throw p1
.end method

.method public setDescriptionBytes(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 17513
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 17514
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->description_:Ljava/lang/Object;

    .line 17515
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 17511
    throw p1
.end method

.method public setEncryptionParameters(Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    .line 17047
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->encryptionParametersBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 17048
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->build()Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->encryptionParameters_:Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    .line 17049
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    goto :goto_0

    .line 17051
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->build()Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 17053
    :goto_0
    iget p1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    return-object p0
.end method

.method public setEncryptionParameters(Lorg/bitcoinj/wallet/Protos$ScryptParameters;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    .line 17030
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->encryptionParametersBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 17034
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->encryptionParameters_:Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    .line 17035
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 17032
    throw p1

    .line 17037
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 17039
    :goto_0
    iget p1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    return-object p0
.end method

.method public setEncryptionType(Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 16992
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 16993
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->encryptionType_:Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

    .line 16994
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 16990
    throw p1
.end method

.method public setExtension(ILorg/bitcoinj/wallet/Protos$Extension$Builder;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    .line 17243
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extensionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 17244
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureExtensionIsMutable()V

    .line 17245
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extension_:Ljava/util/List;

    invoke-virtual {p2}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->build()Lorg/bitcoinj/wallet/Protos$Extension;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 17246
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    goto :goto_0

    .line 17248
    :cond_0
    invoke-virtual {p2}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->build()Lorg/bitcoinj/wallet/Protos$Extension;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public setExtension(ILorg/bitcoinj/wallet/Protos$Extension;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    .line 17226
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extensionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 17230
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureExtensionIsMutable()V

    .line 17231
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extension_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 17232
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 17228
    throw p1

    .line 17234
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public setKey(ILorg/bitcoinj/wallet/Protos$Key$Builder;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    .line 16316
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->keyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 16317
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureKeyIsMutable()V

    .line 16318
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->key_:Ljava/util/List;

    invoke-virtual {p2}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->build()Lorg/bitcoinj/wallet/Protos$Key;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 16319
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    goto :goto_0

    .line 16321
    :cond_0
    invoke-virtual {p2}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->build()Lorg/bitcoinj/wallet/Protos$Key;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public setKey(ILorg/bitcoinj/wallet/Protos$Key;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    .line 16299
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->keyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 16303
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureKeyIsMutable()V

    .line 16304
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->key_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 16305
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 16301
    throw p1

    .line 16307
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public setKeyRotationTime(J)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    .line 17554
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 17555
    iput-wide p1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->keyRotationTime_:J

    .line 17556
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    return-object p0
.end method

.method public setLastSeenBlockHash(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 16153
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 16154
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->lastSeenBlockHash_:Lcom/google/protobuf/ByteString;

    .line 16155
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 16151
    throw p1
.end method

.method public setLastSeenBlockHeight(I)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    .line 16201
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 16202
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->lastSeenBlockHeight_:I

    .line 16203
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    return-object p0
.end method

.method public setLastSeenBlockTimeSecs(J)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    .line 16237
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 16238
    iput-wide p1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->lastSeenBlockTimeSecs_:J

    .line 16239
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    return-object p0
.end method

.method public setNetworkIdentifier(Ljava/lang/String;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 16085
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 16086
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->networkIdentifier_:Ljava/lang/Object;

    .line 16087
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 16083
    throw p1
.end method

.method public setNetworkIdentifierBytes(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 16115
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 16116
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->networkIdentifier_:Ljava/lang/Object;

    .line 16117
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 16113
    throw p1
.end method

.method public setTags(ILorg/bitcoinj/wallet/Protos$Tag$Builder;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    .line 17639
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->tagsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 17640
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureTagsIsMutable()V

    .line 17641
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->tags_:Ljava/util/List;

    invoke-virtual {p2}, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->build()Lorg/bitcoinj/wallet/Protos$Tag;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 17642
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    goto :goto_0

    .line 17644
    :cond_0
    invoke-virtual {p2}, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->build()Lorg/bitcoinj/wallet/Protos$Tag;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public setTags(ILorg/bitcoinj/wallet/Protos$Tag;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    .line 17622
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->tagsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 17626
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureTagsIsMutable()V

    .line 17627
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->tags_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 17628
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 17624
    throw p1

    .line 17630
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public setTransaction(ILorg/bitcoinj/wallet/Protos$Transaction$Builder;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    .line 16556
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 16557
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureTransactionIsMutable()V

    .line 16558
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transaction_:Ljava/util/List;

    invoke-virtual {p2}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->build()Lorg/bitcoinj/wallet/Protos$Transaction;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 16559
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    goto :goto_0

    .line 16561
    :cond_0
    invoke-virtual {p2}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->build()Lorg/bitcoinj/wallet/Protos$Transaction;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public setTransaction(ILorg/bitcoinj/wallet/Protos$Transaction;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    .line 16539
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 16543
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureTransactionIsMutable()V

    .line 16544
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transaction_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 16545
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 16541
    throw p1

    .line 16547
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public setTransactionSigners(ILorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    .line 17899
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionSignersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 17900
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureTransactionSignersIsMutable()V

    .line 17901
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionSigners_:Ljava/util/List;

    invoke-virtual {p2}, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->build()Lorg/bitcoinj/wallet/Protos$TransactionSigner;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 17902
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    goto :goto_0

    .line 17904
    :cond_0
    invoke-virtual {p2}, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->build()Lorg/bitcoinj/wallet/Protos$TransactionSigner;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public setTransactionSigners(ILorg/bitcoinj/wallet/Protos$TransactionSigner;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    .line 17878
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionSignersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 17882
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureTransactionSignersIsMutable()V

    .line 17883
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionSigners_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 17884
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 17880
    throw p1

    .line 17886
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public setVersion(I)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    .line 17158
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 17159
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->version_:I

    .line 17160
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    return-object p0
.end method

.method public setWatchedScript(ILorg/bitcoinj/wallet/Protos$Script$Builder;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    .line 16796
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScriptBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 16797
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureWatchedScriptIsMutable()V

    .line 16798
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScript_:Ljava/util/List;

    invoke-virtual {p2}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->build()Lorg/bitcoinj/wallet/Protos$Script;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 16799
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    goto :goto_0

    .line 16801
    :cond_0
    invoke-virtual {p2}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->build()Lorg/bitcoinj/wallet/Protos$Script;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public setWatchedScript(ILorg/bitcoinj/wallet/Protos$Script;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    .line 16779
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScriptBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 16783
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureWatchedScriptIsMutable()V

    .line 16784
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScript_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 16785
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 16781
    throw p1

    .line 16787
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method
