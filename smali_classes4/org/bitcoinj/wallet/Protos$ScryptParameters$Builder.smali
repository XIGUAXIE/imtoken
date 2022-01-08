.class public final Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoinj/wallet/Protos$ScryptParametersOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/wallet/Protos$ScryptParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder<",
        "Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;",
        ">;",
        "Lorg/bitcoinj/wallet/Protos$ScryptParametersOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private n_:J

.field private p_:I

.field private r_:I

.field private salt_:Lcom/google/protobuf/ByteString;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 11761
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 11891
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->salt_:Lcom/google/protobuf/ByteString;

    const-wide/16 v0, 0x4000

    .line 11942
    iput-wide v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->n_:J

    const/16 v0, 0x8

    .line 11990
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->r_:I

    const/4 v0, 0x1

    .line 12038
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->p_:I

    .line 11762
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 2

    .line 11767
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 11891
    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->salt_:Lcom/google/protobuf/ByteString;

    const-wide/16 v0, 0x4000

    .line 11942
    iput-wide v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->n_:J

    const/16 p1, 0x8

    .line 11990
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->r_:I

    const/4 p1, 0x1

    .line 12038
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->p_:I

    .line 11768
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoinj/wallet/Protos$1;)V
    .locals 0

    .line 11744
    invoke-direct {p0, p1}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$12900()Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;
    .locals 1

    .line 11744
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->create()Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;
    .locals 1

    .line 11775
    new-instance v0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 11750
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$12600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 11771
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->access$13100()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 11744
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->build()Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 11744
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->build()Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/bitcoinj/wallet/Protos$ScryptParameters;
    .locals 2

    .line 11805
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    move-result-object v0

    .line 11806
    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 11807
    :cond_0
    invoke-static {v0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 11744
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 11744
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lorg/bitcoinj/wallet/Protos$ScryptParameters;
    .locals 6

    .line 11813
    new-instance v0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoinj/wallet/Protos$1;)V

    .line 11814
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 11819
    :goto_0
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->salt_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v2}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->access$13302(Lorg/bitcoinj/wallet/Protos$ScryptParameters;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 11823
    :cond_1
    iget-wide v4, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->n_:J

    invoke-static {v0, v4, v5}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->access$13402(Lorg/bitcoinj/wallet/Protos$ScryptParameters;J)J

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 11827
    :cond_2
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->r_:I

    invoke-static {v0, v2}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->access$13502(Lorg/bitcoinj/wallet/Protos$ScryptParameters;I)I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    or-int/lit8 v3, v3, 0x8

    .line 11831
    :cond_3
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->p_:I

    invoke-static {v0, v1}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->access$13602(Lorg/bitcoinj/wallet/Protos$ScryptParameters;I)I

    .line 11832
    invoke-static {v0, v3}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->access$13702(Lorg/bitcoinj/wallet/Protos$ScryptParameters;I)I

    .line 11833
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 11744
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->clear()Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 11744
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->clear()Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 11744
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->clear()Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 11744
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->clear()Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;
    .locals 3

    .line 11779
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 11780
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->salt_:Lcom/google/protobuf/ByteString;

    .line 11781
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->bitField0_:I

    const-wide/16 v1, 0x4000

    .line 11782
    iput-wide v1, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->n_:J

    and-int/lit8 v0, v0, -0x3

    .line 11783
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->bitField0_:I

    const/16 v1, 0x8

    .line 11784
    iput v1, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->r_:I

    and-int/lit8 v0, v0, -0x5

    .line 11785
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->bitField0_:I

    const/4 v1, 0x1

    .line 11786
    iput v1, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->p_:I

    and-int/lit8 v0, v0, -0x9

    .line 11787
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearN()Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;
    .locals 2

    .line 11984
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->bitField0_:I

    const-wide/16 v0, 0x4000

    .line 11985
    iput-wide v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->n_:J

    .line 11986
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->onChanged()V

    return-object p0
.end method

.method public clearP()Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;
    .locals 1

    .line 12080
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->bitField0_:I

    const/4 v0, 0x1

    .line 12081
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->p_:I

    .line 12082
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->onChanged()V

    return-object p0
.end method

.method public clearR()Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;
    .locals 1

    .line 12032
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->bitField0_:I

    const/16 v0, 0x8

    .line 12033
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->r_:I

    .line 12034
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSalt()Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;
    .locals 1

    .line 11936
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->bitField0_:I

    .line 11937
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->getSalt()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->salt_:Lcom/google/protobuf/ByteString;

    .line 11938
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 11744
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->clone()Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 11744
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->clone()Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 11744
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->clone()Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 11744
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->clone()Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 11744
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->clone()Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

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

    .line 11744
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->clone()Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;
    .locals 2

    .line 11792
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->create()Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$ScryptParameters;)Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 11744
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 11744
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$ScryptParameters;
    .locals 1

    .line 11801
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 11797
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$12600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getN()J
    .locals 2

    .line 11961
    iget-wide v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->n_:J

    return-wide v0
.end method

.method public getP()I
    .locals 1

    .line 12057
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->p_:I

    return v0
.end method

.method public getR()I
    .locals 1

    .line 12009
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->r_:I

    return v0
.end method

.method public getSalt()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 11910
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->salt_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasN()Z
    .locals 2

    .line 11951
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->bitField0_:I

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

.method public hasP()Z
    .locals 2

    .line 12047
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->bitField0_:I

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

.method public hasR()Z
    .locals 2

    .line 11999
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->bitField0_:I

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

.method public hasSalt()Z
    .locals 2

    .line 11900
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->bitField0_:I

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

    .line 11755
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$12700()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    const-class v2, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    .line 11756
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 11865
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->hasSalt()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
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

    .line 11744
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 11744
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

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

    .line 11744
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

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

    .line 11744
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 11744
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

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

    .line 11744
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 11878
    :try_start_0
    sget-object v1, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/Protos$ScryptParameters;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 11884
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$ScryptParameters;)Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11880
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lorg/bitcoinj/wallet/Protos$ScryptParameters;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11881
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 11884
    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$ScryptParameters;)Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;
    .locals 1

    .line 11838
    instance-of v0, p1, Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    if-eqz v0, :cond_0

    .line 11839
    check-cast p1, Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$ScryptParameters;)Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    move-result-object p1

    return-object p1

    .line 11841
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lorg/bitcoinj/wallet/Protos$ScryptParameters;)Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;
    .locals 2

    .line 11847
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11848
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->hasSalt()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11849
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->getSalt()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->setSalt(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    .line 11851
    :cond_1
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->hasN()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11852
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->getN()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->setN(J)Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    .line 11854
    :cond_2
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->hasR()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11855
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->getR()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->setR(I)Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    .line 11857
    :cond_3
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->hasP()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11858
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->getP()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->setP(I)Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    .line 11860
    :cond_4
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    return-object p0
.end method

.method public setN(J)Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;
    .locals 1

    .line 11971
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->bitField0_:I

    .line 11972
    iput-wide p1, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->n_:J

    .line 11973
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->onChanged()V

    return-object p0
.end method

.method public setP(I)Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;
    .locals 1

    .line 12067
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->bitField0_:I

    .line 12068
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->p_:I

    .line 12069
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->onChanged()V

    return-object p0
.end method

.method public setR(I)Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;
    .locals 1

    .line 12019
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->bitField0_:I

    .line 12020
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->r_:I

    .line 12021
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->onChanged()V

    return-object p0
.end method

.method public setSalt(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 11923
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->bitField0_:I

    .line 11924
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->salt_:Lcom/google/protobuf/ByteString;

    .line 11925
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 11921
    throw p1
.end method
