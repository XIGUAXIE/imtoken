.class public final Lorg/consenlabs/tokencore/wallet/validators/MetadataValidator;
.super Ljava/lang/Object;
.source "MetadataValidator.java"

# interfaces
.implements Lorg/consenlabs/tokencore/wallet/validators/Validator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/consenlabs/tokencore/wallet/validators/Validator<",
        "Lorg/consenlabs/tokencore/wallet/model/Metadata;",
        ">;"
    }
.end annotation


# instance fields
.field private map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private source:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/validators/MetadataValidator;->map:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/validators/MetadataValidator;->map:Ljava/util/HashMap;

    .line 26
    iput-object p2, p0, Lorg/consenlabs/tokencore/wallet/validators/MetadataValidator;->source:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic validate()Ljava/lang/Object;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/validators/MetadataValidator;->validate()Lorg/consenlabs/tokencore/wallet/model/Metadata;

    move-result-object v0

    return-object v0
.end method

.method public validate()Lorg/consenlabs/tokencore/wallet/model/Metadata;
    .locals 8

    .line 31
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/validators/MetadataValidator;->map:Ljava/util/HashMap;

    const-string v1, "name"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 32
    iget-object v1, p0, Lorg/consenlabs/tokencore/wallet/validators/MetadataValidator;->map:Ljava/util/HashMap;

    const-string v2, "passwordHint"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 33
    iget-object v2, p0, Lorg/consenlabs/tokencore/wallet/validators/MetadataValidator;->map:Ljava/util/HashMap;

    const-string v3, "chainType"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "ETHEREUM"

    .line 36
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_2

    .line 37
    iget-object v3, p0, Lorg/consenlabs/tokencore/wallet/validators/MetadataValidator;->map:Ljava/util/HashMap;

    const-string v5, "network"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 38
    iget-object v3, p0, Lorg/consenlabs/tokencore/wallet/validators/MetadataValidator;->map:Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v4

    .line 40
    :goto_0
    iget-object v5, p0, Lorg/consenlabs/tokencore/wallet/validators/MetadataValidator;->map:Ljava/util/HashMap;

    const-string v6, "segWit"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 41
    iget-object v4, p0, Lorg/consenlabs/tokencore/wallet/validators/MetadataValidator;->map:Ljava/util/HashMap;

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    :cond_1
    move-object v7, v4

    move-object v4, v3

    move-object v3, v7

    goto :goto_1

    :cond_2
    move-object v3, v4

    .line 45
    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    const-string v6, "Can\'t allow empty name"

    invoke-static {v5, v6}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 46
    invoke-static {v2}, Lorg/consenlabs/tokencore/wallet/model/ChainType;->validate(Ljava/lang/String;)V

    .line 48
    new-instance v5, Lorg/consenlabs/tokencore/wallet/model/Metadata;

    invoke-direct {v5, v2, v4, v0, v1}, Lorg/consenlabs/tokencore/wallet/model/Metadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/validators/MetadataValidator;->source:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 50
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/validators/MetadataValidator;->source:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->setSource(Ljava/lang/String;)V

    .line 52
    :cond_3
    invoke-virtual {v5, v3}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->setSegWit(Ljava/lang/String;)V

    return-object v5
.end method
