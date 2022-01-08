.class Lorg/consenlabs/tokencore/wallet/transaction/cosmos/CosmosTransaction$1;
.super Lcom/fasterxml/jackson/databind/JsonSerializer;
.source "CosmosTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/consenlabs/tokencore/wallet/transaction/cosmos/CosmosTransaction;->jsonMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/JsonSerializer<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/consenlabs/tokencore/wallet/transaction/cosmos/CosmosTransaction;


# direct methods
.method constructor <init>(Lorg/consenlabs/tokencore/wallet/transaction/cosmos/CosmosTransaction;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/cosmos/CosmosTransaction$1;->this$0:Lorg/consenlabs/tokencore/wallet/transaction/cosmos/CosmosTransaction;

    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/JsonSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public serialize(Ljava/lang/Double;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    invoke-virtual {p1}, Ljava/lang/Double;->intValue()I

    move-result p3

    int-to-double v0, p3

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpl-double p3, v0, v2

    if-nez p3, :cond_0

    .line 114
    invoke-virtual {p1}, Ljava/lang/Double;->intValue()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(I)V

    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(D)V

    :goto_0
    return-void
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p0, p1, p2, p3}, Lorg/consenlabs/tokencore/wallet/transaction/cosmos/CosmosTransaction$1;->serialize(Ljava/lang/Double;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    return-void
.end method
