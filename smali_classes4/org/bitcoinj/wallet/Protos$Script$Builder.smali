.class public final Lorg/bitcoinj/wallet/Protos$Script$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoinj/wallet/Protos$ScriptOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/wallet/Protos$Script;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder<",
        "Lorg/bitcoinj/wallet/Protos$Script$Builder;",
        ">;",
        "Lorg/bitcoinj/wallet/Protos$ScriptOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private creationTimestamp_:J

.field private program_:Lcom/google/protobuf/ByteString;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 4609
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 4725
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Script$Builder;->program_:Lcom/google/protobuf/ByteString;

    .line 4610
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0

    .line 4615
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 4725
    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Script$Builder;->program_:Lcom/google/protobuf/ByteString;

    .line 4616
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoinj/wallet/Protos$1;)V
    .locals 0

    .line 4592
    invoke-direct {p0, p1}, Lorg/bitcoinj/wallet/Protos$Script$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$5500()Lorg/bitcoinj/wallet/Protos$Script$Builder;
    .locals 1

    .line 4592
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->create()Lorg/bitcoinj/wallet/Protos$Script$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lorg/bitcoinj/wallet/Protos$Script$Builder;
    .locals 1

    .line 4623
    new-instance v0, Lorg/bitcoinj/wallet/Protos$Script$Builder;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$Script$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 4598
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$5200()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 4619
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Script;->access$5700()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 4592
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->build()Lorg/bitcoinj/wallet/Protos$Script;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 4592
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->build()Lorg/bitcoinj/wallet/Protos$Script;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/bitcoinj/wallet/Protos$Script;
    .locals 2

    .line 4649
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$Script;

    move-result-object v0

    .line 4650
    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$Script;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 4651
    :cond_0
    invoke-static {v0}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 4592
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$Script;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 4592
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$Script;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lorg/bitcoinj/wallet/Protos$Script;
    .locals 4

    .line 4657
    new-instance v0, Lorg/bitcoinj/wallet/Protos$Script;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bitcoinj/wallet/Protos$Script;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoinj/wallet/Protos$1;)V

    .line 4658
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Script$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 4663
    :goto_0
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$Script$Builder;->program_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v2}, Lorg/bitcoinj/wallet/Protos$Script;->access$5902(Lorg/bitcoinj/wallet/Protos$Script;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 4667
    :cond_1
    iget-wide v1, p0, Lorg/bitcoinj/wallet/Protos$Script$Builder;->creationTimestamp_:J

    invoke-static {v0, v1, v2}, Lorg/bitcoinj/wallet/Protos$Script;->access$6002(Lorg/bitcoinj/wallet/Protos$Script;J)J

    .line 4668
    invoke-static {v0, v3}, Lorg/bitcoinj/wallet/Protos$Script;->access$6102(Lorg/bitcoinj/wallet/Protos$Script;I)I

    .line 4669
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 4592
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->clear()Lorg/bitcoinj/wallet/Protos$Script$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 4592
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->clear()Lorg/bitcoinj/wallet/Protos$Script$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4592
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->clear()Lorg/bitcoinj/wallet/Protos$Script$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4592
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->clear()Lorg/bitcoinj/wallet/Protos$Script$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lorg/bitcoinj/wallet/Protos$Script$Builder;
    .locals 3

    .line 4627
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 4628
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Script$Builder;->program_:Lcom/google/protobuf/ByteString;

    .line 4629
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Script$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Script$Builder;->bitField0_:I

    const-wide/16 v1, 0x0

    .line 4630
    iput-wide v1, p0, Lorg/bitcoinj/wallet/Protos$Script$Builder;->creationTimestamp_:J

    and-int/lit8 v0, v0, -0x3

    .line 4631
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Script$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearCreationTimestamp()Lorg/bitcoinj/wallet/Protos$Script$Builder;
    .locals 2

    .line 4806
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Script$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Script$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 4807
    iput-wide v0, p0, Lorg/bitcoinj/wallet/Protos$Script$Builder;->creationTimestamp_:J

    .line 4808
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->onChanged()V

    return-object p0
.end method

.method public clearProgram()Lorg/bitcoinj/wallet/Protos$Script$Builder;
    .locals 1

    .line 4754
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Script$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Script$Builder;->bitField0_:I

    .line 4755
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Script;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$Script;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$Script;->getProgram()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Script$Builder;->program_:Lcom/google/protobuf/ByteString;

    .line 4756
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 4592
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->clone()Lorg/bitcoinj/wallet/Protos$Script$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 4592
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->clone()Lorg/bitcoinj/wallet/Protos$Script$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 4592
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->clone()Lorg/bitcoinj/wallet/Protos$Script$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4592
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->clone()Lorg/bitcoinj/wallet/Protos$Script$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4592
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->clone()Lorg/bitcoinj/wallet/Protos$Script$Builder;

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

    .line 4592
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->clone()Lorg/bitcoinj/wallet/Protos$Script$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/bitcoinj/wallet/Protos$Script$Builder;
    .locals 2

    .line 4636
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->create()Lorg/bitcoinj/wallet/Protos$Script$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$Script;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$Script;)Lorg/bitcoinj/wallet/Protos$Script$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCreationTimestamp()J
    .locals 2

    .line 4781
    iget-wide v0, p0, Lorg/bitcoinj/wallet/Protos$Script$Builder;->creationTimestamp_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 4592
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$Script;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 4592
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$Script;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$Script;
    .locals 1

    .line 4645
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Script;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$Script;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 4641
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$5200()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getProgram()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4736
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Script$Builder;->program_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasCreationTimestamp()Z
    .locals 2

    .line 4770
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Script$Builder;->bitField0_:I

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

.method public hasProgram()Z
    .locals 2

    .line 4730
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Script$Builder;->bitField0_:I

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

    .line 4603
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$5300()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoinj/wallet/Protos$Script;

    const-class v2, Lorg/bitcoinj/wallet/Protos$Script$Builder;

    .line 4604
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 4695
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->hasProgram()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4699
    :cond_0
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->hasCreationTimestamp()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

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

    .line 4592
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Script$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 4592
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoinj/wallet/Protos$Script$Builder;

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

    .line 4592
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Script$Builder;

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

    .line 4592
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Script$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4592
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoinj/wallet/Protos$Script$Builder;

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

    .line 4592
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Script$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Script$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 4712
    :try_start_0
    sget-object v1, Lorg/bitcoinj/wallet/Protos$Script;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/Protos$Script;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 4718
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$Script;)Lorg/bitcoinj/wallet/Protos$Script$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4714
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lorg/bitcoinj/wallet/Protos$Script;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4715
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 4718
    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$Script;)Lorg/bitcoinj/wallet/Protos$Script$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoinj/wallet/Protos$Script$Builder;
    .locals 1

    .line 4674
    instance-of v0, p1, Lorg/bitcoinj/wallet/Protos$Script;

    if-eqz v0, :cond_0

    .line 4675
    check-cast p1, Lorg/bitcoinj/wallet/Protos$Script;

    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$Script;)Lorg/bitcoinj/wallet/Protos$Script$Builder;

    move-result-object p1

    return-object p1

    .line 4677
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lorg/bitcoinj/wallet/Protos$Script;)Lorg/bitcoinj/wallet/Protos$Script$Builder;
    .locals 2

    .line 4683
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Script;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$Script;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 4684
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Script;->hasProgram()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4685
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Script;->getProgram()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->setProgram(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$Script$Builder;

    .line 4687
    :cond_1
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Script;->hasCreationTimestamp()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4688
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Script;->getCreationTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->setCreationTimestamp(J)Lorg/bitcoinj/wallet/Protos$Script$Builder;

    .line 4690
    :cond_2
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Script;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    return-object p0
.end method

.method public setCreationTimestamp(J)Lorg/bitcoinj/wallet/Protos$Script$Builder;
    .locals 1

    .line 4792
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Script$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Script$Builder;->bitField0_:I

    .line 4793
    iput-wide p1, p0, Lorg/bitcoinj/wallet/Protos$Script$Builder;->creationTimestamp_:J

    .line 4794
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->onChanged()V

    return-object p0
.end method

.method public setProgram(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$Script$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 4745
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Script$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Script$Builder;->bitField0_:I

    .line 4746
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Script$Builder;->program_:Lcom/google/protobuf/ByteString;

    .line 4747
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 4743
    throw p1
.end method
