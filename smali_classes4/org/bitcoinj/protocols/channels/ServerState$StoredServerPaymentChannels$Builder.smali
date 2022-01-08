.class public final Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "ServerState.java"

# interfaces
.implements Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannelsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder<",
        "Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;",
        ">;",
        "Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannelsOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private channelsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder<",
            "Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;",
            "Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;",
            "Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannelOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private channels_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 320
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 457
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channels_:Ljava/util/List;

    .line 321
    invoke-direct {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0

    .line 326
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 457
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channels_:Ljava/util/List;

    .line 327
    invoke-direct {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoinj/protocols/channels/ServerState$1;)V
    .locals 0

    .line 303
    invoke-direct {p0, p1}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$300()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;
    .locals 1

    .line 303
    invoke-static {}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->create()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;
    .locals 1

    .line 335
    new-instance v0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;

    invoke-direct {v0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;-><init>()V

    return-object v0
.end method

.method private ensureChannelsIsMutable()V
    .locals 3

    .line 459
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 460
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channels_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channels_:Ljava/util/List;

    .line 461
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private getChannelsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder<",
            "Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;",
            "Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;",
            "Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannelOrBuilder;",
            ">;"
        }
    .end annotation

    .line 684
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channelsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 685
    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channels_:Ljava/util/List;

    iget v2, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->bitField0_:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 689
    :goto_0
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    .line 690
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channelsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    const/4 v0, 0x0

    .line 691
    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channels_:Ljava/util/List;

    .line 693
    :cond_1
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channelsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 309
    invoke-static {}, Lorg/bitcoinj/protocols/channels/ServerState;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 330
    invoke-static {}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    invoke-direct {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->getChannelsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    :cond_0
    return-void
.end method


# virtual methods
.method public addAllChannels(Ljava/lang/Iterable;)Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;",
            ">;)",
            "Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;"
        }
    .end annotation

    .line 595
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channelsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 596
    invoke-direct {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->ensureChannelsIsMutable()V

    .line 597
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channels_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 599
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->onChanged()V

    goto :goto_0

    .line 601
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public addChannels(ILorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;)Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;
    .locals 1

    .line 581
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channelsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 582
    invoke-direct {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->ensureChannelsIsMutable()V

    .line 583
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channels_:Ljava/util/List;

    invoke-virtual {p2}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->build()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 584
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->onChanged()V

    goto :goto_0

    .line 586
    :cond_0
    invoke-virtual {p2}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->build()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public addChannels(ILorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;)Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;
    .locals 1

    .line 550
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channelsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 554
    invoke-direct {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->ensureChannelsIsMutable()V

    .line 555
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channels_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 556
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 552
    throw p1

    .line 558
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public addChannels(Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;)Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;
    .locals 1

    .line 567
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channelsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 568
    invoke-direct {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->ensureChannelsIsMutable()V

    .line 569
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channels_:Ljava/util/List;

    invoke-virtual {p1}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->build()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 570
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->onChanged()V

    goto :goto_0

    .line 572
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->build()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public addChannels(Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;)Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;
    .locals 1

    .line 533
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channelsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 537
    invoke-direct {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->ensureChannelsIsMutable()V

    .line 538
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channels_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 539
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 535
    throw p1

    .line 541
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public addChannelsBuilder()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;
    .locals 2

    .line 663
    invoke-direct {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->getChannelsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    .line 664
    invoke-static {}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->getDefaultInstance()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;

    move-result-object v1

    .line 663
    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    return-object v0
.end method

.method public addChannelsBuilder(I)Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;
    .locals 2

    .line 671
    invoke-direct {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->getChannelsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    .line 672
    invoke-static {}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->getDefaultInstance()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;

    move-result-object v1

    .line 671
    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 303
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->build()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 303
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->build()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels;
    .locals 2

    .line 363
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->buildPartial()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels;

    move-result-object v0

    .line 364
    invoke-virtual {v0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 365
    :cond_0
    invoke-static {v0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 303
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->buildPartial()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 303
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->buildPartial()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels;
    .locals 3

    .line 371
    new-instance v0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoinj/protocols/channels/ServerState$1;)V

    .line 372
    iget v1, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->bitField0_:I

    .line 373
    iget-object v2, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channelsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v2, :cond_1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    .line 375
    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channels_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channels_:Ljava/util/List;

    .line 376
    iget v1, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->bitField0_:I

    .line 378
    :cond_0
    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channels_:Ljava/util/List;

    invoke-static {v0, v1}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels;->access$702(Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 380
    :cond_1
    invoke-virtual {v2}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels;->access$702(Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels;Ljava/util/List;)Ljava/util/List;

    .line 382
    :goto_0
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 303
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->clear()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 303
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->clear()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 303
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->clear()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 303
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->clear()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;
    .locals 1

    .line 339
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 340
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channelsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 341
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channels_:Ljava/util/List;

    .line 342
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->bitField0_:I

    goto :goto_0

    .line 344
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    :goto_0
    return-object p0
.end method

.method public clearChannels()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;
    .locals 1

    .line 609
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channelsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 610
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channels_:Ljava/util/List;

    .line 611
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->bitField0_:I

    .line 612
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->onChanged()V

    goto :goto_0

    .line 614
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    :goto_0
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 303
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->clone()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 303
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->clone()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 303
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->clone()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 303
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->clone()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 303
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->clone()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;

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

    .line 303
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->clone()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;
    .locals 2

    .line 350
    invoke-static {}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->create()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->buildPartial()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->mergeFrom(Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels;)Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getChannels(I)Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;
    .locals 1

    .line 492
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channelsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 493
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channels_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;

    return-object p1

    .line 495
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;

    return-object p1
.end method

.method public getChannelsBuilder(I)Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;
    .locals 1

    .line 636
    invoke-direct {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->getChannelsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    return-object p1
.end method

.method public getChannelsBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;",
            ">;"
        }
    .end annotation

    .line 679
    invoke-direct {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->getChannelsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getChannelsCount()I
    .locals 1

    .line 482
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channelsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 483
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channels_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 485
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    return v0
.end method

.method public getChannelsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;",
            ">;"
        }
    .end annotation

    .line 472
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channelsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 473
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channels_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 475
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getChannelsOrBuilder(I)Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannelOrBuilder;
    .locals 1

    .line 643
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channelsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 644
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channels_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannelOrBuilder;

    return-object p1

    .line 645
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannelOrBuilder;

    return-object p1
.end method

.method public getChannelsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannelOrBuilder;",
            ">;"
        }
    .end annotation

    .line 653
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channelsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 654
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 656
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channels_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 303
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->getDefaultInstanceForType()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 303
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->getDefaultInstanceForType()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels;
    .locals 1

    .line 359
    invoke-static {}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels;->getDefaultInstance()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 355
    invoke-static {}, Lorg/bitcoinj/protocols/channels/ServerState;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .line 314
    invoke-static {}, Lorg/bitcoinj/protocols/channels/ServerState;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels;

    const-class v2, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;

    .line 315
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 428
    :goto_0
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->getChannelsCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 429
    invoke-virtual {p0, v1}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->getChannels(I)Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
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

    .line 303
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 303
    invoke-virtual {p0, p1}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;

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

    .line 303
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;

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

    .line 303
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 303
    invoke-virtual {p0, p1}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;

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

    .line 303
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 443
    :try_start_0
    sget-object v1, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 449
    invoke-virtual {p0, p1}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->mergeFrom(Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels;)Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 445
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 446
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 449
    invoke-virtual {p0, v0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->mergeFrom(Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels;)Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;
    .locals 1

    .line 387
    instance-of v0, p1, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels;

    if-eqz v0, :cond_0

    .line 388
    check-cast p1, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels;

    invoke-virtual {p0, p1}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->mergeFrom(Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels;)Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;

    move-result-object p1

    return-object p1

    .line 390
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels;)Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;
    .locals 2

    .line 396
    invoke-static {}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels;->getDefaultInstance()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 397
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channelsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_2

    .line 398
    invoke-static {p1}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels;->access$700(Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 399
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channels_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 400
    invoke-static {p1}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels;->access$700(Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channels_:Ljava/util/List;

    .line 401
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->bitField0_:I

    goto :goto_0

    .line 403
    :cond_1
    invoke-direct {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->ensureChannelsIsMutable()V

    .line 404
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channels_:Ljava/util/List;

    invoke-static {p1}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels;->access$700(Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 406
    :goto_0
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->onChanged()V

    goto :goto_1

    .line 409
    :cond_2
    invoke-static {p1}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels;->access$700(Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 410
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channelsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 411
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channelsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    const/4 v0, 0x0

    .line 412
    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channelsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 413
    invoke-static {p1}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels;->access$700(Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channels_:Ljava/util/List;

    .line 414
    iget v1, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->bitField0_:I

    .line 416
    invoke-static {}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels;->access$800()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 417
    invoke-direct {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->getChannelsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_3
    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channelsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_1

    .line 419
    :cond_4
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channelsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-static {p1}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels;->access$700(Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 423
    :cond_5
    :goto_1
    invoke-virtual {p1}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    return-object p0
.end method

.method public removeChannels(I)Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;
    .locals 1

    .line 622
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channelsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 623
    invoke-direct {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->ensureChannelsIsMutable()V

    .line 624
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channels_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 625
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->onChanged()V

    goto :goto_0

    .line 627
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public setChannels(ILorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;)Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;
    .locals 1

    .line 520
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channelsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 521
    invoke-direct {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->ensureChannelsIsMutable()V

    .line 522
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channels_:Ljava/util/List;

    invoke-virtual {p2}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->build()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 523
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->onChanged()V

    goto :goto_0

    .line 525
    :cond_0
    invoke-virtual {p2}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->build()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public setChannels(ILorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;)Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;
    .locals 1

    .line 503
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channelsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 507
    invoke-direct {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->ensureChannelsIsMutable()V

    .line 508
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channels_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 509
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 505
    throw p1

    .line 511
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method
