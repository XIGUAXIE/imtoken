.class public final Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "PeerSeedProtos.java"

# interfaces
.implements Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder<",
        "Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;",
        ">;",
        "Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedsOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private net_:Ljava/lang/Object;

.field private seedBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder<",
            "Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;",
            "Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;",
            "Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedDataOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private seed_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;",
            ">;"
        }
    .end annotation
.end field

.field private timestamp_:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1100
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 1267
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->seed_:Ljava/util/List;

    const-string v0, ""

    .line 1554
    iput-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->net_:Ljava/lang/Object;

    .line 1101
    invoke-direct {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0

    .line 1106
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 1267
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->seed_:Ljava/util/List;

    const-string p1, ""

    .line 1554
    iput-object p1, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->net_:Ljava/lang/Object;

    .line 1107
    invoke-direct {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoin/crawler/PeerSeedProtos$1;)V
    .locals 0

    .line 1083
    invoke-direct {p0, p1}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$1400()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;
    .locals 1

    .line 1083
    invoke-static {}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->create()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;
    .locals 1

    .line 1115
    new-instance v0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;

    invoke-direct {v0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;-><init>()V

    return-object v0
.end method

.method private ensureSeedIsMutable()V
    .locals 3

    .line 1269
    iget v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 1270
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->seed_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->seed_:Ljava/util/List;

    .line 1271
    iget v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1089
    invoke-static {}, Lorg/bitcoin/crawler/PeerSeedProtos;->access$1100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getSeedFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder<",
            "Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;",
            "Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;",
            "Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedDataOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1494
    iget-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->seedBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1495
    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v1, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->seed_:Ljava/util/List;

    iget v2, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->bitField0_:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1499
    :goto_0
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    .line 1500
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->seedBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    const/4 v0, 0x0

    .line 1501
    iput-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->seed_:Ljava/util/List;

    .line 1503
    :cond_1
    iget-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->seedBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 1110
    invoke-static {}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->access$1600()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1111
    invoke-direct {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->getSeedFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    :cond_0
    return-void
.end method


# virtual methods
.method public addAllSeed(Ljava/lang/Iterable;)Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;",
            ">;)",
            "Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;"
        }
    .end annotation

    .line 1405
    iget-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->seedBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1406
    invoke-direct {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->ensureSeedIsMutable()V

    .line 1407
    iget-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->seed_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1409
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->onChanged()V

    goto :goto_0

    .line 1411
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public addSeed(ILorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;)Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;
    .locals 1

    .line 1391
    iget-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->seedBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1392
    invoke-direct {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->ensureSeedIsMutable()V

    .line 1393
    iget-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->seed_:Ljava/util/List;

    invoke-virtual {p2}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->build()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1394
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->onChanged()V

    goto :goto_0

    .line 1396
    :cond_0
    invoke-virtual {p2}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->build()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public addSeed(ILorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;)Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;
    .locals 1

    .line 1360
    iget-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->seedBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 1364
    invoke-direct {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->ensureSeedIsMutable()V

    .line 1365
    iget-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->seed_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1366
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1362
    throw p1

    .line 1368
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public addSeed(Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;)Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;
    .locals 1

    .line 1377
    iget-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->seedBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1378
    invoke-direct {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->ensureSeedIsMutable()V

    .line 1379
    iget-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->seed_:Ljava/util/List;

    invoke-virtual {p1}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->build()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1380
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->onChanged()V

    goto :goto_0

    .line 1382
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->build()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public addSeed(Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;)Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;
    .locals 1

    .line 1343
    iget-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->seedBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 1347
    invoke-direct {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->ensureSeedIsMutable()V

    .line 1348
    iget-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->seed_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1349
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1345
    throw p1

    .line 1351
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public addSeedBuilder()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;
    .locals 2

    .line 1473
    invoke-direct {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->getSeedFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    .line 1474
    invoke-static {}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->getDefaultInstance()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;

    move-result-object v1

    .line 1473
    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;

    return-object v0
.end method

.method public addSeedBuilder(I)Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;
    .locals 2

    .line 1481
    invoke-direct {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->getSeedFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    .line 1482
    invoke-static {}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->getDefaultInstance()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;

    move-result-object v1

    .line 1481
    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 1083
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->build()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1083
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->build()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;
    .locals 2

    .line 1147
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->buildPartial()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;

    move-result-object v0

    .line 1148
    invoke-virtual {v0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 1149
    :cond_0
    invoke-static {v0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 1083
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->buildPartial()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1083
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->buildPartial()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;
    .locals 6

    .line 1155
    new-instance v0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoin/crawler/PeerSeedProtos$1;)V

    .line 1156
    iget v1, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->bitField0_:I

    .line 1158
    iget-object v2, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->seedBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    const/4 v3, 0x1

    if-nez v2, :cond_1

    and-int/lit8 v2, v1, 0x1

    if-ne v2, v3, :cond_0

    .line 1160
    iget-object v2, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->seed_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->seed_:Ljava/util/List;

    .line 1161
    iget v2, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->bitField0_:I

    .line 1163
    :cond_0
    iget-object v2, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->seed_:Ljava/util/List;

    invoke-static {v0, v2}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->access$1802(Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 1165
    :cond_1
    invoke-virtual {v2}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->access$1802(Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;Ljava/util/List;)Ljava/util/List;

    :goto_0
    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 1170
    :goto_1
    iget-wide v4, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->timestamp_:J

    invoke-static {v0, v4, v5}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->access$1902(Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;J)J

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    or-int/lit8 v3, v3, 0x2

    .line 1174
    :cond_3
    iget-object v1, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->net_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->access$2002(Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1175
    invoke-static {v0, v3}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->access$2102(Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;I)I

    .line 1176
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1083
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->clear()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 1083
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->clear()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1083
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->clear()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1083
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->clear()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;
    .locals 2

    .line 1119
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1120
    iget-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->seedBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1121
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->seed_:Ljava/util/List;

    .line 1122
    iget v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->bitField0_:I

    goto :goto_0

    .line 1124
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    :goto_0
    const-wide/16 v0, 0x0

    .line 1126
    iput-wide v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->timestamp_:J

    .line 1127
    iget v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->bitField0_:I

    const-string v1, ""

    .line 1128
    iput-object v1, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->net_:Ljava/lang/Object;

    and-int/lit8 v0, v0, -0x5

    .line 1129
    iput v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearNet()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;
    .locals 1

    .line 1611
    iget v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->bitField0_:I

    .line 1612
    invoke-static {}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->getDefaultInstance()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->getNet()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->net_:Ljava/lang/Object;

    .line 1613
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSeed()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;
    .locals 1

    .line 1419
    iget-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->seedBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1420
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->seed_:Ljava/util/List;

    .line 1421
    iget v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->bitField0_:I

    .line 1422
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->onChanged()V

    goto :goto_0

    .line 1424
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    :goto_0
    return-object p0
.end method

.method public clearTimestamp()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;
    .locals 2

    .line 1548
    iget v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 1549
    iput-wide v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->timestamp_:J

    .line 1550
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1083
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->clone()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 1083
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->clone()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 1083
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->clone()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1083
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->clone()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1083
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->clone()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;

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

    .line 1083
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->clone()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;
    .locals 2

    .line 1134
    invoke-static {}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->create()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->buildPartial()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->mergeFrom(Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;)Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1083
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->getDefaultInstanceForType()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1083
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->getDefaultInstanceForType()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;
    .locals 1

    .line 1143
    invoke-static {}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->getDefaultInstance()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1139
    invoke-static {}, Lorg/bitcoin/crawler/PeerSeedProtos;->access$1100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getNet()Ljava/lang/String;
    .locals 2

    .line 1565
    iget-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->net_:Ljava/lang/Object;

    .line 1566
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 1567
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1569
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1570
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1571
    iput-object v1, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->net_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 1575
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNetBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1583
    iget-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->net_:Ljava/lang/Object;

    .line 1584
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1585
    check-cast v0, Ljava/lang/String;

    .line 1586
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1588
    iput-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->net_:Ljava/lang/Object;

    return-object v0

    .line 1591
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSeed(I)Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;
    .locals 1

    .line 1302
    iget-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->seedBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1303
    iget-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->seed_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;

    return-object p1

    .line 1305
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object p1

    check-cast p1, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;

    return-object p1
.end method

.method public getSeedBuilder(I)Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;
    .locals 1

    .line 1446
    invoke-direct {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->getSeedFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;

    return-object p1
.end method

.method public getSeedBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;",
            ">;"
        }
    .end annotation

    .line 1489
    invoke-direct {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->getSeedFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSeedCount()I
    .locals 1

    .line 1292
    iget-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->seedBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1293
    iget-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->seed_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 1295
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    return v0
.end method

.method public getSeedList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;",
            ">;"
        }
    .end annotation

    .line 1282
    iget-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->seedBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1283
    iget-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->seed_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1285
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSeedOrBuilder(I)Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedDataOrBuilder;
    .locals 1

    .line 1453
    iget-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->seedBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1454
    iget-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->seed_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedDataOrBuilder;

    return-object p1

    .line 1455
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedDataOrBuilder;

    return-object p1
.end method

.method public getSeedOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedDataOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1463
    iget-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->seedBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 1464
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1466
    :cond_0
    iget-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->seed_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 1525
    iget-wide v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->timestamp_:J

    return-wide v0
.end method

.method public hasNet()Z
    .locals 2

    .line 1559
    iget v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->bitField0_:I

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

.method public hasTimestamp()Z
    .locals 2

    .line 1515
    iget v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .line 1094
    invoke-static {}, Lorg/bitcoin/crawler/PeerSeedProtos;->access$1200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;

    const-class v2, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;

    .line 1095
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .line 1230
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->hasTimestamp()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1234
    :cond_0
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->hasNet()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    .line 1238
    :goto_0
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->getSeedCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 1239
    invoke-virtual {p0, v0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->getSeed(I)Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
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

    .line 1083
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1083
    invoke-virtual {p0, p1}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;

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

    .line 1083
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;

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

    .line 1083
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1083
    invoke-virtual {p0, p1}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;

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

    .line 1083
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1253
    :try_start_0
    sget-object v1, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 1259
    invoke-virtual {p0, p1}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->mergeFrom(Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;)Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1255
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1256
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 1259
    invoke-virtual {p0, v0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->mergeFrom(Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;)Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;
    .locals 1

    .line 1181
    instance-of v0, p1, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;

    if-eqz v0, :cond_0

    .line 1182
    check-cast p1, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;

    invoke-virtual {p0, p1}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->mergeFrom(Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;)Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;

    move-result-object p1

    return-object p1

    .line 1184
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;)Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;
    .locals 2

    .line 1190
    invoke-static {}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->getDefaultInstance()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 1191
    :cond_0
    iget-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->seedBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_2

    .line 1192
    invoke-static {p1}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->access$1800(Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1193
    iget-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->seed_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1194
    invoke-static {p1}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->access$1800(Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->seed_:Ljava/util/List;

    .line 1195
    iget v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->bitField0_:I

    goto :goto_0

    .line 1197
    :cond_1
    invoke-direct {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->ensureSeedIsMutable()V

    .line 1198
    iget-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->seed_:Ljava/util/List;

    invoke-static {p1}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->access$1800(Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1200
    :goto_0
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->onChanged()V

    goto :goto_1

    .line 1203
    :cond_2
    invoke-static {p1}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->access$1800(Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1204
    iget-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->seedBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1205
    iget-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->seedBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    const/4 v0, 0x0

    .line 1206
    iput-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->seedBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1207
    invoke-static {p1}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->access$1800(Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->seed_:Ljava/util/List;

    .line 1208
    iget v1, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->bitField0_:I

    .line 1210
    invoke-static {}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->access$2200()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1211
    invoke-direct {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->getSeedFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_3
    iput-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->seedBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_1

    .line 1213
    :cond_4
    iget-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->seedBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-static {p1}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->access$1800(Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1217
    :cond_5
    :goto_1
    invoke-virtual {p1}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1218
    invoke-virtual {p1}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->setTimestamp(J)Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;

    .line 1220
    :cond_6
    invoke-virtual {p1}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->hasNet()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1221
    iget v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->bitField0_:I

    .line 1222
    invoke-static {p1}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->access$2000(Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->net_:Ljava/lang/Object;

    .line 1223
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->onChanged()V

    .line 1225
    :cond_7
    invoke-virtual {p1}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    return-object p0
.end method

.method public removeSeed(I)Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;
    .locals 1

    .line 1432
    iget-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->seedBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1433
    invoke-direct {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->ensureSeedIsMutable()V

    .line 1434
    iget-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->seed_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1435
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->onChanged()V

    goto :goto_0

    .line 1437
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public setNet(Ljava/lang/String;)Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 1602
    iget v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->bitField0_:I

    .line 1603
    iput-object p1, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->net_:Ljava/lang/Object;

    .line 1604
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 1600
    throw p1
.end method

.method public setNetBytes(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 1624
    iget v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->bitField0_:I

    .line 1625
    iput-object p1, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->net_:Ljava/lang/Object;

    .line 1626
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 1622
    throw p1
.end method

.method public setSeed(ILorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;)Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;
    .locals 1

    .line 1330
    iget-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->seedBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1331
    invoke-direct {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->ensureSeedIsMutable()V

    .line 1332
    iget-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->seed_:Ljava/util/List;

    invoke-virtual {p2}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->build()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1333
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->onChanged()V

    goto :goto_0

    .line 1335
    :cond_0
    invoke-virtual {p2}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->build()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public setSeed(ILorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;)Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;
    .locals 1

    .line 1313
    iget-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->seedBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 1317
    invoke-direct {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->ensureSeedIsMutable()V

    .line 1318
    iget-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->seed_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1319
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1315
    throw p1

    .line 1321
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public setTimestamp(J)Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;
    .locals 1

    .line 1535
    iget v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->bitField0_:I

    .line 1536
    iput-wide p1, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->timestamp_:J

    .line 1537
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->onChanged()V

    return-object p0
.end method
