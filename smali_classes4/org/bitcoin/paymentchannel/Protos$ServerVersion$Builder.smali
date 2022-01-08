.class public final Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoin/paymentchannel/Protos$ServerVersionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoin/paymentchannel/Protos$ServerVersion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder<",
        "Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;",
        ">;",
        "Lorg/bitcoin/paymentchannel/Protos$ServerVersionOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private major_:I

.field private minor_:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 3826
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 3827
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0

    .line 3832
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 3833
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoin/paymentchannel/Protos$1;)V
    .locals 0

    .line 3809
    invoke-direct {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$3400()Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;
    .locals 1

    .line 3809
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->create()Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;
    .locals 1

    .line 3840
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

    invoke-direct {v0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 3815
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$3100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 3836
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->access$3600()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 3809
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3809
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/bitcoin/paymentchannel/Protos$ServerVersion;
    .locals 2

    .line 3866
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    move-result-object v0

    .line 3867
    invoke-virtual {v0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3868
    :cond_0
    invoke-static {v0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 3809
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3809
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lorg/bitcoin/paymentchannel/Protos$ServerVersion;
    .locals 4

    .line 3874
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoin/paymentchannel/Protos$1;)V

    .line 3875
    iget v1, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 3880
    :goto_0
    iget v2, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->major_:I

    invoke-static {v0, v2}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->access$3802(Lorg/bitcoin/paymentchannel/Protos$ServerVersion;I)I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 3884
    :cond_1
    iget v1, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->minor_:I

    invoke-static {v0, v1}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->access$3902(Lorg/bitcoin/paymentchannel/Protos$ServerVersion;I)I

    .line 3885
    invoke-static {v0, v3}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->access$4002(Lorg/bitcoin/paymentchannel/Protos$ServerVersion;I)I

    .line 3886
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 3809
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->clear()Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 3809
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->clear()Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3809
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->clear()Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3809
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->clear()Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;
    .locals 2

    .line 3844
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    const/4 v0, 0x0

    .line 3845
    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->major_:I

    .line 3846
    iget v1, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->bitField0_:I

    .line 3847
    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->minor_:I

    and-int/lit8 v0, v1, -0x3

    .line 3848
    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearMajor()Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;
    .locals 1

    .line 3964
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 3965
    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->major_:I

    .line 3966
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMinor()Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;
    .locals 1

    .line 3996
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 3997
    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->minor_:I

    .line 3998
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 3809
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 3809
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 3809
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3809
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3809
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

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

    .line 3809
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;
    .locals 2

    .line 3853
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->create()Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$ServerVersion;)Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 3809
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3809
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$ServerVersion;
    .locals 1

    .line 3862
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 3858
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$3100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getMajor()I
    .locals 1

    .line 3949
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->major_:I

    return v0
.end method

.method public getMinor()I
    .locals 1

    .line 3981
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->minor_:I

    return v0
.end method

.method public hasMajor()Z
    .locals 2

    .line 3943
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasMinor()Z
    .locals 2

    .line 3975
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->bitField0_:I

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

    .line 3820
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$3200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    const-class v2, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

    .line 3821
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 3912
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->hasMajor()Z

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

    .line 3809
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 3809
    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

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

    .line 3809
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

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

    .line 3809
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3809
    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

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

    .line 3809
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3925
    :try_start_0
    sget-object v1, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 3931
    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$ServerVersion;)Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3927
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3928
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 3931
    invoke-virtual {p0, v0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$ServerVersion;)Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;
    .locals 1

    .line 3891
    instance-of v0, p1, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    if-eqz v0, :cond_0

    .line 3892
    check-cast p1, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$ServerVersion;)Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

    move-result-object p1

    return-object p1

    .line 3894
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lorg/bitcoin/paymentchannel/Protos$ServerVersion;)Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;
    .locals 1

    .line 3900
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 3901
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->hasMajor()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3902
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->getMajor()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->setMajor(I)Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

    .line 3904
    :cond_1
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->hasMinor()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3905
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->getMinor()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->setMinor(I)Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

    .line 3907
    :cond_2
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    return-object p0
.end method

.method public setMajor(I)Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;
    .locals 1

    .line 3955
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->bitField0_:I

    .line 3956
    iput p1, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->major_:I

    .line 3957
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->onChanged()V

    return-object p0
.end method

.method public setMinor(I)Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;
    .locals 1

    .line 3987
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->bitField0_:I

    .line 3988
    iput p1, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->minor_:I

    .line 3989
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->onChanged()V

    return-object p0
.end method
