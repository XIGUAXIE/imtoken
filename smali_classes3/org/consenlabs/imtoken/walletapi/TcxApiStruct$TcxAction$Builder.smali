.class public final Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "TcxApiStruct.java"

# interfaces
.implements Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxActionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;",
        ">;",
        "Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxActionOrBuilder;"
    }
.end annotation


# instance fields
.field private method_:Ljava/lang/Object;

.field private paramBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/protobuf/Any;",
            "Lcom/google/protobuf/Any$Builder;",
            "Lcom/google/protobuf/AnyOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private param_:Lcom/google/protobuf/Any;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 412
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 553
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->method_:Ljava/lang/Object;

    .line 413
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 418
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 553
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->method_:Ljava/lang/Object;

    .line 419
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$1;)V
    .locals 0

    .line 394
    invoke-direct {p0, p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$1;)V
    .locals 0

    .line 394
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 400
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getParamFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/protobuf/Any;",
            "Lcom/google/protobuf/Any$Builder;",
            "Lcom/google/protobuf/AnyOrBuilder;",
            ">;"
        }
    .end annotation

    .line 737
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->paramBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 738
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 740
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->getParam()Lcom/google/protobuf/Any;

    move-result-object v1

    .line 741
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 742
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->paramBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 743
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->param_:Lcom/google/protobuf/Any;

    .line 745
    :cond_0
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->paramBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 423
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->access$400()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 394
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 394
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;
    .locals 0

    .line 503
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 394
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->build()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 394
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->build()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;
    .locals 2

    .line 453
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->buildPartial()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;

    move-result-object v0

    .line 454
    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 455
    :cond_0
    invoke-static {v0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 394
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->buildPartial()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 394
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->buildPartial()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;
    .locals 2

    .line 462
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$1;)V

    .line 463
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->method_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->access$602(Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->paramBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_0

    .line 465
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->param_:Lcom/google/protobuf/Any;

    invoke-static {v0, v1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->access$702(Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;Lcom/google/protobuf/Any;)Lcom/google/protobuf/Any;

    goto :goto_0

    .line 467
    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Any;

    invoke-static {v0, v1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->access$702(Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;Lcom/google/protobuf/Any;)Lcom/google/protobuf/Any;

    .line 469
    :goto_0
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 394
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->clear()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 394
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->clear()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 394
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->clear()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 394
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->clear()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;
    .locals 2

    .line 428
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    .line 429
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->method_:Ljava/lang/Object;

    .line 431
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->paramBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 432
    iput-object v1, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->param_:Lcom/google/protobuf/Any;

    goto :goto_0

    .line 434
    :cond_0
    iput-object v1, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->param_:Lcom/google/protobuf/Any;

    .line 435
    iput-object v1, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->paramBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 394
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 394
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;
    .locals 0

    .line 486
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;

    return-object p1
.end method

.method public clearMethod()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;
    .locals 1

    .line 608
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->getDefaultInstance()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;

    move-result-object v0

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->getMethod()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->method_:Ljava/lang/Object;

    .line 609
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 394
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 394
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 394
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;
    .locals 0

    .line 491
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;

    return-object p1
.end method

.method public clearParam()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;
    .locals 2

    .line 702
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->paramBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 703
    iput-object v1, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->param_:Lcom/google/protobuf/Any;

    .line 704
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->onChanged()V

    goto :goto_0

    .line 706
    :cond_0
    iput-object v1, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->param_:Lcom/google/protobuf/Any;

    .line 707
    iput-object v1, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->paramBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 394
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->clone()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 394
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->clone()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 394
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->clone()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 394
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->clone()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 394
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->clone()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;

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

    .line 394
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->clone()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;
    .locals 1

    .line 475
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 394
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 394
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;
    .locals 1

    .line 448
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->getDefaultInstance()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 443
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 2

    .line 559
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->method_:Ljava/lang/Object;

    .line 560
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 561
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 563
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 564
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->method_:Ljava/lang/Object;

    return-object v0

    .line 567
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getMethodBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 576
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->method_:Ljava/lang/Object;

    .line 577
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 578
    check-cast v0, Ljava/lang/String;

    .line 579
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 581
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->method_:Ljava/lang/Object;

    return-object v0

    .line 584
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getParam()Lcom/google/protobuf/Any;
    .locals 1

    .line 644
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->paramBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 645
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->param_:Lcom/google/protobuf/Any;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Any;->getDefaultInstance()Lcom/google/protobuf/Any;

    move-result-object v0

    :cond_0
    return-object v0

    .line 647
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Any;

    return-object v0
.end method

.method public getParamBuilder()Lcom/google/protobuf/Any$Builder;
    .locals 1

    .line 717
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->onChanged()V

    .line 718
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->getParamFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Any$Builder;

    return-object v0
.end method

.method public getParamOrBuilder()Lcom/google/protobuf/AnyOrBuilder;
    .locals 1

    .line 724
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->paramBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 725
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/AnyOrBuilder;

    return-object v0

    .line 727
    :cond_0
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->param_:Lcom/google/protobuf/Any;

    if-nez v0, :cond_1

    .line 728
    invoke-static {}, Lcom/google/protobuf/Any;->getDefaultInstance()Lcom/google/protobuf/Any;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public hasParam()Z
    .locals 1

    .line 637
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->paramBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->param_:Lcom/google/protobuf/Any;

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

    .line 406
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct;->access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;

    const-class v2, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;

    .line 407
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

    .line 394
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 394
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;

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

    .line 394
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;

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

    .line 394
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 394
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;

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

    .line 394
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 541
    :try_start_0
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->access$900()Lcom/google/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 547
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->mergeFrom(Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 543
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 544
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

    .line 547
    invoke-virtual {p0, v0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->mergeFrom(Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;

    .line 549
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;
    .locals 1

    .line 507
    instance-of v0, p1, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;

    if-eqz v0, :cond_0

    .line 508
    check-cast p1, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;

    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->mergeFrom(Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;

    move-result-object p1

    return-object p1

    .line 510
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;
    .locals 1

    .line 516
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->getDefaultInstance()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 517
    :cond_0
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 518
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->access$600(Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->method_:Ljava/lang/Object;

    .line 519
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->onChanged()V

    .line 521
    :cond_1
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->hasParam()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 522
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->getParam()Lcom/google/protobuf/Any;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->mergeParam(Lcom/google/protobuf/Any;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;

    .line 524
    :cond_2
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->access$800(Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;

    .line 525
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeParam(Lcom/google/protobuf/Any;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;
    .locals 1

    .line 684
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->paramBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 685
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->param_:Lcom/google/protobuf/Any;

    if-eqz v0, :cond_0

    .line 687
    invoke-static {v0}, Lcom/google/protobuf/Any;->newBuilder(Lcom/google/protobuf/Any;)Lcom/google/protobuf/Any$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Any$Builder;->mergeFrom(Lcom/google/protobuf/Any;)Lcom/google/protobuf/Any$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Any$Builder;->buildPartial()Lcom/google/protobuf/Any;

    move-result-object p1

    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->param_:Lcom/google/protobuf/Any;

    goto :goto_0

    .line 689
    :cond_0
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->param_:Lcom/google/protobuf/Any;

    .line 691
    :goto_0
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->onChanged()V

    goto :goto_1

    .line 693
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_1
    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 394
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 394
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 394
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;
    .locals 0

    .line 756
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 394
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 394
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;
    .locals 0

    .line 481
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;

    return-object p1
.end method

.method public setMethod(Ljava/lang/String;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 598
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->method_:Ljava/lang/Object;

    .line 599
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 595
    throw p1
.end method

.method public setMethodBytes(Lcom/google/protobuf/ByteString;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 622
    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->access$1000(Lcom/google/protobuf/ByteString;)V

    .line 624
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->method_:Ljava/lang/Object;

    .line 625
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 620
    throw p1
.end method

.method public setParam(Lcom/google/protobuf/Any$Builder;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;
    .locals 1

    .line 671
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->paramBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 672
    invoke-virtual {p1}, Lcom/google/protobuf/Any$Builder;->build()Lcom/google/protobuf/Any;

    move-result-object p1

    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->param_:Lcom/google/protobuf/Any;

    .line 673
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->onChanged()V

    goto :goto_0

    .line 675
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/Any$Builder;->build()Lcom/google/protobuf/Any;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setParam(Lcom/google/protobuf/Any;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;
    .locals 1

    .line 654
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->paramBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 658
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->param_:Lcom/google/protobuf/Any;

    .line 659
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 656
    throw p1

    .line 661
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 394
    invoke-virtual {p0, p1, p2, p3}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 394
    invoke-virtual {p0, p1, p2, p3}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;
    .locals 0

    .line 497
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 394
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 394
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;
    .locals 0

    .line 750
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;

    return-object p1
.end method
