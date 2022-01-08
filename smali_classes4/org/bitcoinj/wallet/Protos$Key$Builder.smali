.class public final Lorg/bitcoinj/wallet/Protos$Key$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoinj/wallet/Protos$KeyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/wallet/Protos$Key;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder<",
        "Lorg/bitcoinj/wallet/Protos$Key$Builder;",
        ">;",
        "Lorg/bitcoinj/wallet/Protos$KeyOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private creationTimestamp_:J

.field private deterministicKeyBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder<",
            "Lorg/bitcoinj/wallet/Protos$DeterministicKey;",
            "Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;",
            "Lorg/bitcoinj/wallet/Protos$DeterministicKeyOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private deterministicKey_:Lorg/bitcoinj/wallet/Protos$DeterministicKey;

.field private deterministicSeed_:Lcom/google/protobuf/ByteString;

.field private encryptedDataBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder<",
            "Lorg/bitcoinj/wallet/Protos$EncryptedData;",
            "Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;",
            "Lorg/bitcoinj/wallet/Protos$EncryptedDataOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private encryptedData_:Lorg/bitcoinj/wallet/Protos$EncryptedData;

.field private encryptedDeterministicSeedBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder<",
            "Lorg/bitcoinj/wallet/Protos$EncryptedData;",
            "Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;",
            "Lorg/bitcoinj/wallet/Protos$EncryptedDataOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private encryptedDeterministicSeed_:Lorg/bitcoinj/wallet/Protos$EncryptedData;

.field private label_:Ljava/lang/Object;

.field private publicKey_:Lcom/google/protobuf/ByteString;

.field private secretBytes_:Lcom/google/protobuf/ByteString;

.field private type_:Lorg/bitcoinj/wallet/Protos$Key$Type;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3284
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 3506
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Key$Type;->ORIGINAL:Lorg/bitcoinj/wallet/Protos$Key$Type;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->type_:Lorg/bitcoinj/wallet/Protos$Key$Type;

    .line 3541
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->secretBytes_:Lcom/google/protobuf/ByteString;

    .line 3596
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$EncryptedData;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$EncryptedData;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->encryptedData_:Lorg/bitcoinj/wallet/Protos$EncryptedData;

    .line 3748
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->publicKey_:Lcom/google/protobuf/ByteString;

    const-string v0, ""

    .line 3803
    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->label_:Ljava/lang/Object;

    .line 3955
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$DeterministicKey;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->deterministicKey_:Lorg/bitcoinj/wallet/Protos$DeterministicKey;

    .line 4071
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->deterministicSeed_:Lcom/google/protobuf/ByteString;

    .line 4126
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$EncryptedData;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$EncryptedData;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->encryptedDeterministicSeed_:Lorg/bitcoinj/wallet/Protos$EncryptedData;

    .line 3285
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0

    .line 3290
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 3506
    sget-object p1, Lorg/bitcoinj/wallet/Protos$Key$Type;->ORIGINAL:Lorg/bitcoinj/wallet/Protos$Key$Type;

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->type_:Lorg/bitcoinj/wallet/Protos$Key$Type;

    .line 3541
    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->secretBytes_:Lcom/google/protobuf/ByteString;

    .line 3596
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$EncryptedData;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$EncryptedData;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->encryptedData_:Lorg/bitcoinj/wallet/Protos$EncryptedData;

    .line 3748
    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->publicKey_:Lcom/google/protobuf/ByteString;

    const-string p1, ""

    .line 3803
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->label_:Ljava/lang/Object;

    .line 3955
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$DeterministicKey;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->deterministicKey_:Lorg/bitcoinj/wallet/Protos$DeterministicKey;

    .line 4071
    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->deterministicSeed_:Lcom/google/protobuf/ByteString;

    .line 4126
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$EncryptedData;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$EncryptedData;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->encryptedDeterministicSeed_:Lorg/bitcoinj/wallet/Protos$EncryptedData;

    .line 3291
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoinj/wallet/Protos$1;)V
    .locals 0

    .line 3267
    invoke-direct {p0, p1}, Lorg/bitcoinj/wallet/Protos$Key$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$3800()Lorg/bitcoinj/wallet/Protos$Key$Builder;
    .locals 1

    .line 3267
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->create()Lorg/bitcoinj/wallet/Protos$Key$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lorg/bitcoinj/wallet/Protos$Key$Builder;
    .locals 1

    .line 3301
    new-instance v0, Lorg/bitcoinj/wallet/Protos$Key$Builder;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 3273
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$3500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getDeterministicKeyFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder<",
            "Lorg/bitcoinj/wallet/Protos$DeterministicKey;",
            "Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;",
            "Lorg/bitcoinj/wallet/Protos$DeterministicKeyOrBuilder;",
            ">;"
        }
    .end annotation

    .line 4060
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->deterministicKeyBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 4061
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    .line 4063
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->getDeterministicKey()Lorg/bitcoinj/wallet/Protos$DeterministicKey;

    move-result-object v1

    .line 4064
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    .line 4065
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->deterministicKeyBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    .line 4066
    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->deterministicKey_:Lorg/bitcoinj/wallet/Protos$DeterministicKey;

    .line 4068
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->deterministicKeyBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private getEncryptedDataFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder<",
            "Lorg/bitcoinj/wallet/Protos$EncryptedData;",
            "Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;",
            "Lorg/bitcoinj/wallet/Protos$EncryptedDataOrBuilder;",
            ">;"
        }
    .end annotation

    .line 3737
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->encryptedDataBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 3738
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    .line 3740
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->getEncryptedData()Lorg/bitcoinj/wallet/Protos$EncryptedData;

    move-result-object v1

    .line 3741
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    .line 3742
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->encryptedDataBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    .line 3743
    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->encryptedData_:Lorg/bitcoinj/wallet/Protos$EncryptedData;

    .line 3745
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->encryptedDataBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private getEncryptedDeterministicSeedFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder<",
            "Lorg/bitcoinj/wallet/Protos$EncryptedData;",
            "Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;",
            "Lorg/bitcoinj/wallet/Protos$EncryptedDataOrBuilder;",
            ">;"
        }
    .end annotation

    .line 4267
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->encryptedDeterministicSeedBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 4268
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    .line 4270
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->getEncryptedDeterministicSeed()Lorg/bitcoinj/wallet/Protos$EncryptedData;

    move-result-object v1

    .line 4271
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    .line 4272
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->encryptedDeterministicSeedBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    .line 4273
    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->encryptedDeterministicSeed_:Lorg/bitcoinj/wallet/Protos$EncryptedData;

    .line 4275
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->encryptedDeterministicSeedBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 3294
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Key;->access$4000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3295
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->getEncryptedDataFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 3296
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->getDeterministicKeyFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 3297
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->getEncryptedDeterministicSeedFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 3267
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->build()Lorg/bitcoinj/wallet/Protos$Key;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3267
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->build()Lorg/bitcoinj/wallet/Protos$Key;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/bitcoinj/wallet/Protos$Key;
    .locals 2

    .line 3353
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$Key;

    move-result-object v0

    .line 3354
    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$Key;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3355
    :cond_0
    invoke-static {v0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 3267
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$Key;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3267
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$Key;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lorg/bitcoinj/wallet/Protos$Key;
    .locals 6

    .line 3361
    new-instance v0, Lorg/bitcoinj/wallet/Protos$Key;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bitcoinj/wallet/Protos$Key;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoinj/wallet/Protos$1;)V

    .line 3362
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 3367
    :goto_0
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->type_:Lorg/bitcoinj/wallet/Protos$Key$Type;

    invoke-static {v0, v2}, Lorg/bitcoinj/wallet/Protos$Key;->access$4202(Lorg/bitcoinj/wallet/Protos$Key;Lorg/bitcoinj/wallet/Protos$Key$Type;)Lorg/bitcoinj/wallet/Protos$Key$Type;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 3371
    :cond_1
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->secretBytes_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v2}, Lorg/bitcoinj/wallet/Protos$Key;->access$4302(Lorg/bitcoinj/wallet/Protos$Key;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 3375
    :cond_2
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->encryptedDataBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v2, :cond_3

    .line 3376
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->encryptedData_:Lorg/bitcoinj/wallet/Protos$EncryptedData;

    invoke-static {v0, v2}, Lorg/bitcoinj/wallet/Protos$Key;->access$4402(Lorg/bitcoinj/wallet/Protos$Key;Lorg/bitcoinj/wallet/Protos$EncryptedData;)Lorg/bitcoinj/wallet/Protos$EncryptedData;

    goto :goto_1

    .line 3378
    :cond_3
    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/wallet/Protos$EncryptedData;

    invoke-static {v0, v2}, Lorg/bitcoinj/wallet/Protos$Key;->access$4402(Lorg/bitcoinj/wallet/Protos$Key;Lorg/bitcoinj/wallet/Protos$EncryptedData;)Lorg/bitcoinj/wallet/Protos$EncryptedData;

    :goto_1
    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_4

    or-int/lit8 v3, v3, 0x8

    .line 3383
    :cond_4
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->publicKey_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v2}, Lorg/bitcoinj/wallet/Protos$Key;->access$4502(Lorg/bitcoinj/wallet/Protos$Key;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_5

    or-int/lit8 v3, v3, 0x10

    .line 3387
    :cond_5
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->label_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lorg/bitcoinj/wallet/Protos$Key;->access$4602(Lorg/bitcoinj/wallet/Protos$Key;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x20

    const/16 v4, 0x20

    if-ne v2, v4, :cond_6

    or-int/lit8 v3, v3, 0x20

    .line 3391
    :cond_6
    iget-wide v4, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->creationTimestamp_:J

    invoke-static {v0, v4, v5}, Lorg/bitcoinj/wallet/Protos$Key;->access$4702(Lorg/bitcoinj/wallet/Protos$Key;J)J

    and-int/lit8 v2, v1, 0x40

    const/16 v4, 0x40

    if-ne v2, v4, :cond_7

    or-int/lit8 v3, v3, 0x40

    .line 3395
    :cond_7
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->deterministicKeyBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v2, :cond_8

    .line 3396
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->deterministicKey_:Lorg/bitcoinj/wallet/Protos$DeterministicKey;

    invoke-static {v0, v2}, Lorg/bitcoinj/wallet/Protos$Key;->access$4802(Lorg/bitcoinj/wallet/Protos$Key;Lorg/bitcoinj/wallet/Protos$DeterministicKey;)Lorg/bitcoinj/wallet/Protos$DeterministicKey;

    goto :goto_2

    .line 3398
    :cond_8
    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/wallet/Protos$DeterministicKey;

    invoke-static {v0, v2}, Lorg/bitcoinj/wallet/Protos$Key;->access$4802(Lorg/bitcoinj/wallet/Protos$Key;Lorg/bitcoinj/wallet/Protos$DeterministicKey;)Lorg/bitcoinj/wallet/Protos$DeterministicKey;

    :goto_2
    and-int/lit16 v2, v1, 0x80

    const/16 v4, 0x80

    if-ne v2, v4, :cond_9

    or-int/lit16 v3, v3, 0x80

    .line 3403
    :cond_9
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->deterministicSeed_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v2}, Lorg/bitcoinj/wallet/Protos$Key;->access$4902(Lorg/bitcoinj/wallet/Protos$Key;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    const/16 v2, 0x100

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_a

    or-int/lit16 v3, v3, 0x100

    .line 3407
    :cond_a
    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->encryptedDeterministicSeedBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v1, :cond_b

    .line 3408
    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->encryptedDeterministicSeed_:Lorg/bitcoinj/wallet/Protos$EncryptedData;

    invoke-static {v0, v1}, Lorg/bitcoinj/wallet/Protos$Key;->access$5002(Lorg/bitcoinj/wallet/Protos$Key;Lorg/bitcoinj/wallet/Protos$EncryptedData;)Lorg/bitcoinj/wallet/Protos$EncryptedData;

    goto :goto_3

    .line 3410
    :cond_b
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/wallet/Protos$EncryptedData;

    invoke-static {v0, v1}, Lorg/bitcoinj/wallet/Protos$Key;->access$5002(Lorg/bitcoinj/wallet/Protos$Key;Lorg/bitcoinj/wallet/Protos$EncryptedData;)Lorg/bitcoinj/wallet/Protos$EncryptedData;

    .line 3412
    :goto_3
    invoke-static {v0, v3}, Lorg/bitcoinj/wallet/Protos$Key;->access$5102(Lorg/bitcoinj/wallet/Protos$Key;I)I

    .line 3413
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 3267
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->clear()Lorg/bitcoinj/wallet/Protos$Key$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 3267
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->clear()Lorg/bitcoinj/wallet/Protos$Key$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3267
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->clear()Lorg/bitcoinj/wallet/Protos$Key$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3267
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->clear()Lorg/bitcoinj/wallet/Protos$Key$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lorg/bitcoinj/wallet/Protos$Key$Builder;
    .locals 3

    .line 3305
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 3306
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Key$Type;->ORIGINAL:Lorg/bitcoinj/wallet/Protos$Key$Type;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->type_:Lorg/bitcoinj/wallet/Protos$Key$Type;

    .line 3307
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    .line 3308
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->secretBytes_:Lcom/google/protobuf/ByteString;

    .line 3309
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    .line 3310
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->encryptedDataBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 3311
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$EncryptedData;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$EncryptedData;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->encryptedData_:Lorg/bitcoinj/wallet/Protos$EncryptedData;

    goto :goto_0

    .line 3313
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 3315
    :goto_0
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    .line 3316
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->publicKey_:Lcom/google/protobuf/ByteString;

    .line 3317
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    const-string v1, ""

    .line 3318
    iput-object v1, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->label_:Ljava/lang/Object;

    and-int/lit8 v0, v0, -0x11

    .line 3319
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    const-wide/16 v1, 0x0

    .line 3320
    iput-wide v1, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->creationTimestamp_:J

    and-int/lit8 v0, v0, -0x21

    .line 3321
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    .line 3322
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->deterministicKeyBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 3323
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$DeterministicKey;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->deterministicKey_:Lorg/bitcoinj/wallet/Protos$DeterministicKey;

    goto :goto_1

    .line 3325
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 3327
    :goto_1
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    .line 3328
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->deterministicSeed_:Lcom/google/protobuf/ByteString;

    .line 3329
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    .line 3330
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->encryptedDeterministicSeedBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_2

    .line 3331
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$EncryptedData;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$EncryptedData;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->encryptedDeterministicSeed_:Lorg/bitcoinj/wallet/Protos$EncryptedData;

    goto :goto_2

    .line 3333
    :cond_2
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 3335
    :goto_2
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearCreationTimestamp()Lorg/bitcoinj/wallet/Protos$Key$Builder;
    .locals 2

    .line 3949
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 3950
    iput-wide v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->creationTimestamp_:J

    .line 3951
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->onChanged()V

    return-object p0
.end method

.method public clearDeterministicKey()Lorg/bitcoinj/wallet/Protos$Key$Builder;
    .locals 1

    .line 4027
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->deterministicKeyBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 4028
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$DeterministicKey;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->deterministicKey_:Lorg/bitcoinj/wallet/Protos$DeterministicKey;

    .line 4029
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->onChanged()V

    goto :goto_0

    .line 4031
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 4033
    :goto_0
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearDeterministicSeed()Lorg/bitcoinj/wallet/Protos$Key$Builder;
    .locals 1

    .line 4120
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    .line 4121
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Key;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$Key;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$Key;->getDeterministicSeed()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->deterministicSeed_:Lcom/google/protobuf/ByteString;

    .line 4122
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->onChanged()V

    return-object p0
.end method

.method public clearEncryptedData()Lorg/bitcoinj/wallet/Protos$Key$Builder;
    .locals 1

    .line 3692
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->encryptedDataBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 3693
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$EncryptedData;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$EncryptedData;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->encryptedData_:Lorg/bitcoinj/wallet/Protos$EncryptedData;

    .line 3694
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->onChanged()V

    goto :goto_0

    .line 3696
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 3698
    :goto_0
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearEncryptedDeterministicSeed()Lorg/bitcoinj/wallet/Protos$Key$Builder;
    .locals 1

    .line 4222
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->encryptedDeterministicSeedBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 4223
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$EncryptedData;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$EncryptedData;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->encryptedDeterministicSeed_:Lorg/bitcoinj/wallet/Protos$EncryptedData;

    .line 4224
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->onChanged()V

    goto :goto_0

    .line 4226
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 4228
    :goto_0
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearLabel()Lorg/bitcoinj/wallet/Protos$Key$Builder;
    .locals 1

    .line 3880
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    .line 3881
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Key;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$Key;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$Key;->getLabel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->label_:Ljava/lang/Object;

    .line 3882
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->onChanged()V

    return-object p0
.end method

.method public clearPublicKey()Lorg/bitcoinj/wallet/Protos$Key$Builder;
    .locals 1

    .line 3797
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    .line 3798
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Key;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$Key;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$Key;->getPublicKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->publicKey_:Lcom/google/protobuf/ByteString;

    .line 3799
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSecretBytes()Lorg/bitcoinj/wallet/Protos$Key$Builder;
    .locals 1

    .line 3590
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    .line 3591
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Key;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$Key;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$Key;->getSecretBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->secretBytes_:Lcom/google/protobuf/ByteString;

    .line 3592
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->onChanged()V

    return-object p0
.end method

.method public clearType()Lorg/bitcoinj/wallet/Protos$Key$Builder;
    .locals 1

    .line 3535
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    .line 3536
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Key$Type;->ORIGINAL:Lorg/bitcoinj/wallet/Protos$Key$Type;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->type_:Lorg/bitcoinj/wallet/Protos$Key$Type;

    .line 3537
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 3267
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->clone()Lorg/bitcoinj/wallet/Protos$Key$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 3267
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->clone()Lorg/bitcoinj/wallet/Protos$Key$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 3267
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->clone()Lorg/bitcoinj/wallet/Protos$Key$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3267
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->clone()Lorg/bitcoinj/wallet/Protos$Key$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3267
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->clone()Lorg/bitcoinj/wallet/Protos$Key$Builder;

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

    .line 3267
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->clone()Lorg/bitcoinj/wallet/Protos$Key$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/bitcoinj/wallet/Protos$Key$Builder;
    .locals 2

    .line 3340
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->create()Lorg/bitcoinj/wallet/Protos$Key$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$Key;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$Key;)Lorg/bitcoinj/wallet/Protos$Key$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCreationTimestamp()J
    .locals 2

    .line 3924
    iget-wide v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->creationTimestamp_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 3267
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$Key;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3267
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$Key;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$Key;
    .locals 1

    .line 3349
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Key;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$Key;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 3345
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$3500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDeterministicKey()Lorg/bitcoinj/wallet/Protos$DeterministicKey;
    .locals 1

    .line 3968
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->deterministicKeyBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 3969
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->deterministicKey_:Lorg/bitcoinj/wallet/Protos$DeterministicKey;

    return-object v0

    .line 3971
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$DeterministicKey;

    return-object v0
.end method

.method public getDeterministicKeyBuilder()Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;
    .locals 1

    .line 4040
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    .line 4041
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->onChanged()V

    .line 4042
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->getDeterministicKeyFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;

    return-object v0
.end method

.method public getDeterministicKeyOrBuilder()Lorg/bitcoinj/wallet/Protos$DeterministicKeyOrBuilder;
    .locals 1

    .line 4048
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->deterministicKeyBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 4049
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$DeterministicKeyOrBuilder;

    return-object v0

    .line 4051
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->deterministicKey_:Lorg/bitcoinj/wallet/Protos$DeterministicKey;

    return-object v0
.end method

.method public getDeterministicSeed()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4092
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->deterministicSeed_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getEncryptedData()Lorg/bitcoinj/wallet/Protos$EncryptedData;
    .locals 1

    .line 3617
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->encryptedDataBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 3618
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->encryptedData_:Lorg/bitcoinj/wallet/Protos$EncryptedData;

    return-object v0

    .line 3620
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$EncryptedData;

    return-object v0
.end method

.method public getEncryptedDataBuilder()Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;
    .locals 1

    .line 3709
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    .line 3710
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->onChanged()V

    .line 3711
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->getEncryptedDataFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;

    return-object v0
.end method

.method public getEncryptedDataOrBuilder()Lorg/bitcoinj/wallet/Protos$EncryptedDataOrBuilder;
    .locals 1

    .line 3721
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->encryptedDataBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 3722
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$EncryptedDataOrBuilder;

    return-object v0

    .line 3724
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->encryptedData_:Lorg/bitcoinj/wallet/Protos$EncryptedData;

    return-object v0
.end method

.method public getEncryptedDeterministicSeed()Lorg/bitcoinj/wallet/Protos$EncryptedData;
    .locals 1

    .line 4147
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->encryptedDeterministicSeedBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 4148
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->encryptedDeterministicSeed_:Lorg/bitcoinj/wallet/Protos$EncryptedData;

    return-object v0

    .line 4150
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$EncryptedData;

    return-object v0
.end method

.method public getEncryptedDeterministicSeedBuilder()Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;
    .locals 1

    .line 4239
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    .line 4240
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->onChanged()V

    .line 4241
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->getEncryptedDeterministicSeedFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;

    return-object v0
.end method

.method public getEncryptedDeterministicSeedOrBuilder()Lorg/bitcoinj/wallet/Protos$EncryptedDataOrBuilder;
    .locals 1

    .line 4251
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->encryptedDeterministicSeedBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 4252
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$EncryptedDataOrBuilder;

    return-object v0

    .line 4254
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->encryptedDeterministicSeed_:Lorg/bitcoinj/wallet/Protos$EncryptedData;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 2

    .line 3822
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->label_:Ljava/lang/Object;

    .line 3823
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 3824
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3826
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3827
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3828
    iput-object v1, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->label_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 3832
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLabelBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 3844
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->label_:Ljava/lang/Object;

    .line 3845
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3846
    check-cast v0, Ljava/lang/String;

    .line 3847
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3849
    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->label_:Ljava/lang/Object;

    return-object v0

    .line 3852
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getPublicKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3769
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->publicKey_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSecretBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3562
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->secretBytes_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getType()Lorg/bitcoinj/wallet/Protos$Key$Type;
    .locals 1

    .line 3517
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->type_:Lorg/bitcoinj/wallet/Protos$Key$Type;

    return-object v0
.end method

.method public hasCreationTimestamp()Z
    .locals 2

    .line 3913
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDeterministicKey()Z
    .locals 2

    .line 3962
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDeterministicSeed()Z
    .locals 2

    .line 4081
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

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

.method public hasEncryptedData()Z
    .locals 2

    .line 3607
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

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

.method public hasEncryptedDeterministicSeed()Z
    .locals 2

    .line 4137
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

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

.method public hasLabel()Z
    .locals 2

    .line 3812
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPublicKey()Z
    .locals 2

    .line 3758
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

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

.method public hasSecretBytes()Z
    .locals 2

    .line 3551
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

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

.method public hasType()Z
    .locals 2

    .line 3511
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .line 3278
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$3600()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoinj/wallet/Protos$Key;

    const-class v2, Lorg/bitcoinj/wallet/Protos$Key$Builder;

    .line 3279
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 3462
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->hasType()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3466
    :cond_0
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->hasEncryptedData()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3467
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->getEncryptedData()Lorg/bitcoinj/wallet/Protos$EncryptedData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$EncryptedData;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 3472
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->hasDeterministicKey()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3473
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->getDeterministicKey()Lorg/bitcoinj/wallet/Protos$DeterministicKey;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 3478
    :cond_2
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->hasEncryptedDeterministicSeed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3479
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->getEncryptedDeterministicSeed()Lorg/bitcoinj/wallet/Protos$EncryptedData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$EncryptedData;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public mergeDeterministicKey(Lorg/bitcoinj/wallet/Protos$DeterministicKey;)Lorg/bitcoinj/wallet/Protos$Key$Builder;
    .locals 3

    .line 4008
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->deterministicKeyBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/16 v1, 0x40

    if-nez v0, :cond_1

    .line 4009
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->deterministicKey_:Lorg/bitcoinj/wallet/Protos$DeterministicKey;

    .line 4010
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$DeterministicKey;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4011
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->deterministicKey_:Lorg/bitcoinj/wallet/Protos$DeterministicKey;

    .line 4012
    invoke-static {v0}, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->newBuilder(Lorg/bitcoinj/wallet/Protos$DeterministicKey;)Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$DeterministicKey;)Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$DeterministicKey;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->deterministicKey_:Lorg/bitcoinj/wallet/Protos$DeterministicKey;

    goto :goto_0

    .line 4014
    :cond_0
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->deterministicKey_:Lorg/bitcoinj/wallet/Protos$DeterministicKey;

    .line 4016
    :goto_0
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->onChanged()V

    goto :goto_1

    .line 4018
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 4020
    :goto_1
    iget p1, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    return-object p0
.end method

.method public mergeEncryptedData(Lorg/bitcoinj/wallet/Protos$EncryptedData;)Lorg/bitcoinj/wallet/Protos$Key$Builder;
    .locals 3

    .line 3669
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->encryptedDataBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v1, 0x4

    if-nez v0, :cond_1

    .line 3670
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->encryptedData_:Lorg/bitcoinj/wallet/Protos$EncryptedData;

    .line 3671
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$EncryptedData;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$EncryptedData;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 3672
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->encryptedData_:Lorg/bitcoinj/wallet/Protos$EncryptedData;

    .line 3673
    invoke-static {v0}, Lorg/bitcoinj/wallet/Protos$EncryptedData;->newBuilder(Lorg/bitcoinj/wallet/Protos$EncryptedData;)Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$EncryptedData;)Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$EncryptedData;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->encryptedData_:Lorg/bitcoinj/wallet/Protos$EncryptedData;

    goto :goto_0

    .line 3675
    :cond_0
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->encryptedData_:Lorg/bitcoinj/wallet/Protos$EncryptedData;

    .line 3677
    :goto_0
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->onChanged()V

    goto :goto_1

    .line 3679
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 3681
    :goto_1
    iget p1, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    return-object p0
.end method

.method public mergeEncryptedDeterministicSeed(Lorg/bitcoinj/wallet/Protos$EncryptedData;)Lorg/bitcoinj/wallet/Protos$Key$Builder;
    .locals 3

    .line 4199
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->encryptedDeterministicSeedBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/16 v1, 0x100

    if-nez v0, :cond_1

    .line 4200
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->encryptedDeterministicSeed_:Lorg/bitcoinj/wallet/Protos$EncryptedData;

    .line 4201
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$EncryptedData;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$EncryptedData;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4202
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->encryptedDeterministicSeed_:Lorg/bitcoinj/wallet/Protos$EncryptedData;

    .line 4203
    invoke-static {v0}, Lorg/bitcoinj/wallet/Protos$EncryptedData;->newBuilder(Lorg/bitcoinj/wallet/Protos$EncryptedData;)Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$EncryptedData;)Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$EncryptedData;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->encryptedDeterministicSeed_:Lorg/bitcoinj/wallet/Protos$EncryptedData;

    goto :goto_0

    .line 4205
    :cond_0
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->encryptedDeterministicSeed_:Lorg/bitcoinj/wallet/Protos$EncryptedData;

    .line 4207
    :goto_0
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->onChanged()V

    goto :goto_1

    .line 4209
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 4211
    :goto_1
    iget p1, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3267
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Key$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 3267
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoinj/wallet/Protos$Key$Builder;

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

    .line 3267
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Key$Builder;

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

    .line 3267
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Key$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3267
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoinj/wallet/Protos$Key$Builder;

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

    .line 3267
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Key$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Key$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3493
    :try_start_0
    sget-object v1, Lorg/bitcoinj/wallet/Protos$Key;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/Protos$Key;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 3499
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$Key;)Lorg/bitcoinj/wallet/Protos$Key$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3495
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lorg/bitcoinj/wallet/Protos$Key;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3496
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 3499
    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$Key;)Lorg/bitcoinj/wallet/Protos$Key$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoinj/wallet/Protos$Key$Builder;
    .locals 1

    .line 3418
    instance-of v0, p1, Lorg/bitcoinj/wallet/Protos$Key;

    if-eqz v0, :cond_0

    .line 3419
    check-cast p1, Lorg/bitcoinj/wallet/Protos$Key;

    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$Key;)Lorg/bitcoinj/wallet/Protos$Key$Builder;

    move-result-object p1

    return-object p1

    .line 3421
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lorg/bitcoinj/wallet/Protos$Key;)Lorg/bitcoinj/wallet/Protos$Key$Builder;
    .locals 2

    .line 3427
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Key;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$Key;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 3428
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Key;->hasType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3429
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Key;->getType()Lorg/bitcoinj/wallet/Protos$Key$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->setType(Lorg/bitcoinj/wallet/Protos$Key$Type;)Lorg/bitcoinj/wallet/Protos$Key$Builder;

    .line 3431
    :cond_1
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Key;->hasSecretBytes()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3432
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Key;->getSecretBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->setSecretBytes(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$Key$Builder;

    .line 3434
    :cond_2
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Key;->hasEncryptedData()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3435
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Key;->getEncryptedData()Lorg/bitcoinj/wallet/Protos$EncryptedData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->mergeEncryptedData(Lorg/bitcoinj/wallet/Protos$EncryptedData;)Lorg/bitcoinj/wallet/Protos$Key$Builder;

    .line 3437
    :cond_3
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Key;->hasPublicKey()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3438
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Key;->getPublicKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->setPublicKey(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$Key$Builder;

    .line 3440
    :cond_4
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Key;->hasLabel()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3441
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    .line 3442
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Key;->access$4600(Lorg/bitcoinj/wallet/Protos$Key;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->label_:Ljava/lang/Object;

    .line 3443
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->onChanged()V

    .line 3445
    :cond_5
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Key;->hasCreationTimestamp()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3446
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Key;->getCreationTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->setCreationTimestamp(J)Lorg/bitcoinj/wallet/Protos$Key$Builder;

    .line 3448
    :cond_6
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Key;->hasDeterministicKey()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3449
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Key;->getDeterministicKey()Lorg/bitcoinj/wallet/Protos$DeterministicKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->mergeDeterministicKey(Lorg/bitcoinj/wallet/Protos$DeterministicKey;)Lorg/bitcoinj/wallet/Protos$Key$Builder;

    .line 3451
    :cond_7
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Key;->hasDeterministicSeed()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3452
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Key;->getDeterministicSeed()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->setDeterministicSeed(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$Key$Builder;

    .line 3454
    :cond_8
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Key;->hasEncryptedDeterministicSeed()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3455
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Key;->getEncryptedDeterministicSeed()Lorg/bitcoinj/wallet/Protos$EncryptedData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->mergeEncryptedDeterministicSeed(Lorg/bitcoinj/wallet/Protos$EncryptedData;)Lorg/bitcoinj/wallet/Protos$Key$Builder;

    .line 3457
    :cond_9
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Key;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    return-object p0
.end method

.method public setCreationTimestamp(J)Lorg/bitcoinj/wallet/Protos$Key$Builder;
    .locals 1

    .line 3935
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    .line 3936
    iput-wide p1, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->creationTimestamp_:J

    .line 3937
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->onChanged()V

    return-object p0
.end method

.method public setDeterministicKey(Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;)Lorg/bitcoinj/wallet/Protos$Key$Builder;
    .locals 1

    .line 3995
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->deterministicKeyBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 3996
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->build()Lorg/bitcoinj/wallet/Protos$DeterministicKey;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->deterministicKey_:Lorg/bitcoinj/wallet/Protos$DeterministicKey;

    .line 3997
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->onChanged()V

    goto :goto_0

    .line 3999
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->build()Lorg/bitcoinj/wallet/Protos$DeterministicKey;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 4001
    :goto_0
    iget p1, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    return-object p0
.end method

.method public setDeterministicKey(Lorg/bitcoinj/wallet/Protos$DeterministicKey;)Lorg/bitcoinj/wallet/Protos$Key$Builder;
    .locals 1

    .line 3978
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->deterministicKeyBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 3982
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->deterministicKey_:Lorg/bitcoinj/wallet/Protos$DeterministicKey;

    .line 3983
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3980
    throw p1

    .line 3985
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 3987
    :goto_0
    iget p1, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    return-object p0
.end method

.method public setDeterministicSeed(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$Key$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 4106
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    .line 4107
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->deterministicSeed_:Lcom/google/protobuf/ByteString;

    .line 4108
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 4104
    throw p1
.end method

.method public setEncryptedData(Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;)Lorg/bitcoinj/wallet/Protos$Key$Builder;
    .locals 1

    .line 3652
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->encryptedDataBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 3653
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->build()Lorg/bitcoinj/wallet/Protos$EncryptedData;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->encryptedData_:Lorg/bitcoinj/wallet/Protos$EncryptedData;

    .line 3654
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->onChanged()V

    goto :goto_0

    .line 3656
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->build()Lorg/bitcoinj/wallet/Protos$EncryptedData;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 3658
    :goto_0
    iget p1, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    return-object p0
.end method

.method public setEncryptedData(Lorg/bitcoinj/wallet/Protos$EncryptedData;)Lorg/bitcoinj/wallet/Protos$Key$Builder;
    .locals 1

    .line 3631
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->encryptedDataBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 3635
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->encryptedData_:Lorg/bitcoinj/wallet/Protos$EncryptedData;

    .line 3636
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3633
    throw p1

    .line 3638
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 3640
    :goto_0
    iget p1, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    return-object p0
.end method

.method public setEncryptedDeterministicSeed(Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;)Lorg/bitcoinj/wallet/Protos$Key$Builder;
    .locals 1

    .line 4182
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->encryptedDeterministicSeedBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 4183
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->build()Lorg/bitcoinj/wallet/Protos$EncryptedData;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->encryptedDeterministicSeed_:Lorg/bitcoinj/wallet/Protos$EncryptedData;

    .line 4184
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->onChanged()V

    goto :goto_0

    .line 4186
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->build()Lorg/bitcoinj/wallet/Protos$EncryptedData;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 4188
    :goto_0
    iget p1, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    return-object p0
.end method

.method public setEncryptedDeterministicSeed(Lorg/bitcoinj/wallet/Protos$EncryptedData;)Lorg/bitcoinj/wallet/Protos$Key$Builder;
    .locals 1

    .line 4161
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->encryptedDeterministicSeedBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 4165
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->encryptedDeterministicSeed_:Lorg/bitcoinj/wallet/Protos$EncryptedData;

    .line 4166
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4163
    throw p1

    .line 4168
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 4170
    :goto_0
    iget p1, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    return-object p0
.end method

.method public setLabel(Ljava/lang/String;)Lorg/bitcoinj/wallet/Protos$Key$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 3867
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    .line 3868
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->label_:Ljava/lang/Object;

    .line 3869
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 3865
    throw p1
.end method

.method public setLabelBytes(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$Key$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 3897
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    .line 3898
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->label_:Ljava/lang/Object;

    .line 3899
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 3895
    throw p1
.end method

.method public setPublicKey(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$Key$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 3783
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    .line 3784
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->publicKey_:Lcom/google/protobuf/ByteString;

    .line 3785
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 3781
    throw p1
.end method

.method public setSecretBytes(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$Key$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 3576
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    .line 3577
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->secretBytes_:Lcom/google/protobuf/ByteString;

    .line 3578
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 3574
    throw p1
.end method

.method public setType(Lorg/bitcoinj/wallet/Protos$Key$Type;)Lorg/bitcoinj/wallet/Protos$Key$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 3526
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    .line 3527
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->type_:Lorg/bitcoinj/wallet/Protos$Key$Type;

    .line 3528
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 3524
    throw p1
.end method
