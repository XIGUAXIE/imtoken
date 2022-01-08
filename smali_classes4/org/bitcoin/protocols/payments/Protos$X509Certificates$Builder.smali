.class public final Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoin/protocols/payments/Protos$X509CertificatesOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoin/protocols/payments/Protos$X509Certificates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder<",
        "Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;",
        ">;",
        "Lorg/bitcoin/protocols/payments/Protos$X509CertificatesOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private certificate_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3577
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 3682
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->certificate_:Ljava/util/List;

    .line 3578
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0

    .line 3583
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 3682
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->certificate_:Ljava/util/List;

    .line 3584
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoin/protocols/payments/Protos$1;)V
    .locals 0

    .line 3560
    invoke-direct {p0, p1}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$4200()Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;
    .locals 1

    .line 3560
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->create()Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;
    .locals 1

    .line 3591
    new-instance v0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;

    invoke-direct {v0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;-><init>()V

    return-object v0
.end method

.method private ensureCertificateIsMutable()V
    .locals 3

    .line 3684
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 3685
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->certificate_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->certificate_:Ljava/util/List;

    .line 3686
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 3566
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos;->access$3900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 3587
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->access$4400()Z

    return-void
.end method


# virtual methods
.method public addAllCertificate(Ljava/lang/Iterable;)Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/ByteString;",
            ">;)",
            "Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;"
        }
    .end annotation

    .line 3762
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->ensureCertificateIsMutable()V

    .line 3763
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->certificate_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 3765
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->onChanged()V

    return-object p0
.end method

.method public addCertificate(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 3748
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->ensureCertificateIsMutable()V

    .line 3749
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->certificate_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3750
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 3746
    throw p1
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 3560
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->build()Lorg/bitcoin/protocols/payments/Protos$X509Certificates;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3560
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->build()Lorg/bitcoin/protocols/payments/Protos$X509Certificates;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/bitcoin/protocols/payments/Protos$X509Certificates;
    .locals 2

    .line 3615
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->buildPartial()Lorg/bitcoin/protocols/payments/Protos$X509Certificates;

    move-result-object v0

    .line 3616
    invoke-virtual {v0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3617
    :cond_0
    invoke-static {v0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 3560
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->buildPartial()Lorg/bitcoin/protocols/payments/Protos$X509Certificates;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3560
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->buildPartial()Lorg/bitcoin/protocols/payments/Protos$X509Certificates;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lorg/bitcoin/protocols/payments/Protos$X509Certificates;
    .locals 3

    .line 3623
    new-instance v0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoin/protocols/payments/Protos$1;)V

    .line 3624
    iget v1, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    .line 3626
    iget-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->certificate_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->certificate_:Ljava/util/List;

    .line 3627
    iget v1, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->bitField0_:I

    .line 3629
    :cond_0
    iget-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->certificate_:Ljava/util/List;

    invoke-static {v0, v1}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->access$4602(Lorg/bitcoin/protocols/payments/Protos$X509Certificates;Ljava/util/List;)Ljava/util/List;

    .line 3630
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 3560
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->clear()Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 3560
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->clear()Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3560
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->clear()Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3560
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->clear()Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;
    .locals 1

    .line 3595
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 3596
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->certificate_:Ljava/util/List;

    .line 3597
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearCertificate()Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;
    .locals 1

    .line 3776
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->certificate_:Ljava/util/List;

    .line 3777
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->bitField0_:I

    .line 3778
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 3560
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->clone()Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 3560
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->clone()Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 3560
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->clone()Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3560
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->clone()Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3560
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->clone()Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;

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

    .line 3560
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->clone()Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;
    .locals 2

    .line 3602
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->create()Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->buildPartial()Lorg/bitcoin/protocols/payments/Protos$X509Certificates;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->mergeFrom(Lorg/bitcoin/protocols/payments/Protos$X509Certificates;)Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCertificate(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3718
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->certificate_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method public getCertificateCount()I
    .locals 1

    .line 3708
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->certificate_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCertificateList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation

    .line 3698
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->certificate_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 3560
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->getDefaultInstanceForType()Lorg/bitcoin/protocols/payments/Protos$X509Certificates;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3560
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->getDefaultInstanceForType()Lorg/bitcoin/protocols/payments/Protos$X509Certificates;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoin/protocols/payments/Protos$X509Certificates;
    .locals 1

    .line 3611
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->getDefaultInstance()Lorg/bitcoin/protocols/payments/Protos$X509Certificates;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 3607
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos;->access$3900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .line 3571
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos;->access$4000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;

    const-class v2, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;

    .line 3572
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

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

    .line 3560
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 3560
    invoke-virtual {p0, p1}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;

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

    .line 3560
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;

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

    .line 3560
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3560
    invoke-virtual {p0, p1}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;

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

    .line 3560
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3669
    :try_start_0
    sget-object v1, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 3675
    invoke-virtual {p0, p1}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->mergeFrom(Lorg/bitcoin/protocols/payments/Protos$X509Certificates;)Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3671
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3672
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 3675
    invoke-virtual {p0, v0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->mergeFrom(Lorg/bitcoin/protocols/payments/Protos$X509Certificates;)Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;
    .locals 1

    .line 3635
    instance-of v0, p1, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;

    if-eqz v0, :cond_0

    .line 3636
    check-cast p1, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;

    invoke-virtual {p0, p1}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->mergeFrom(Lorg/bitcoin/protocols/payments/Protos$X509Certificates;)Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;

    move-result-object p1

    return-object p1

    .line 3638
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lorg/bitcoin/protocols/payments/Protos$X509Certificates;)Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;
    .locals 2

    .line 3644
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->getDefaultInstance()Lorg/bitcoin/protocols/payments/Protos$X509Certificates;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 3645
    :cond_0
    invoke-static {p1}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->access$4600(Lorg/bitcoin/protocols/payments/Protos$X509Certificates;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3646
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->certificate_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3647
    invoke-static {p1}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->access$4600(Lorg/bitcoin/protocols/payments/Protos$X509Certificates;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->certificate_:Ljava/util/List;

    .line 3648
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->bitField0_:I

    goto :goto_0

    .line 3650
    :cond_1
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->ensureCertificateIsMutable()V

    .line 3651
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->certificate_:Ljava/util/List;

    invoke-static {p1}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->access$4600(Lorg/bitcoin/protocols/payments/Protos$X509Certificates;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3653
    :goto_0
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->onChanged()V

    .line 3655
    :cond_2
    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    return-object p0
.end method

.method public setCertificate(ILcom/google/protobuf/ByteString;)Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;
    .locals 1

    if-eqz p2, :cond_0

    .line 3732
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->ensureCertificateIsMutable()V

    .line 3733
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->certificate_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3734
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 3730
    throw p1
.end method
