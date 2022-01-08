.class public Lorg/apache/commons/digester/SetNestedPropertiesRule;
.super Lorg/apache/commons/digester/Rule;
.source "SetNestedPropertiesRule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/digester/SetNestedPropertiesRule$AnyChildRule;,
        Lorg/apache/commons/digester/SetNestedPropertiesRule$AnyChildRules;
    }
.end annotation


# instance fields
.field private allowUnknownChildElements:Z

.field private elementNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private log:Lorg/apache/commons/logging/Log;

.field private trimData:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 121
    invoke-direct {p0}, Lorg/apache/commons/digester/Rule;-><init>()V

    const/4 v0, 0x0

    .line 104
    iput-object v0, p0, Lorg/apache/commons/digester/SetNestedPropertiesRule;->log:Lorg/apache/commons/logging/Log;

    const/4 v0, 0x1

    .line 106
    iput-boolean v0, p0, Lorg/apache/commons/digester/SetNestedPropertiesRule;->trimData:Z

    const/4 v0, 0x0

    .line 107
    iput-boolean v0, p0, Lorg/apache/commons/digester/SetNestedPropertiesRule;->allowUnknownChildElements:Z

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/digester/SetNestedPropertiesRule;->elementNames:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 138
    invoke-direct {p0}, Lorg/apache/commons/digester/Rule;-><init>()V

    const/4 v0, 0x0

    .line 104
    iput-object v0, p0, Lorg/apache/commons/digester/SetNestedPropertiesRule;->log:Lorg/apache/commons/logging/Log;

    const/4 v0, 0x1

    .line 106
    iput-boolean v0, p0, Lorg/apache/commons/digester/SetNestedPropertiesRule;->trimData:Z

    const/4 v0, 0x0

    .line 107
    iput-boolean v0, p0, Lorg/apache/commons/digester/SetNestedPropertiesRule;->allowUnknownChildElements:Z

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/digester/SetNestedPropertiesRule;->elementNames:Ljava/util/HashMap;

    .line 139
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6

    .line 183
    invoke-direct {p0}, Lorg/apache/commons/digester/Rule;-><init>()V

    const/4 v0, 0x0

    .line 104
    iput-object v0, p0, Lorg/apache/commons/digester/SetNestedPropertiesRule;->log:Lorg/apache/commons/logging/Log;

    const/4 v1, 0x1

    .line 106
    iput-boolean v1, p0, Lorg/apache/commons/digester/SetNestedPropertiesRule;->trimData:Z

    const/4 v1, 0x0

    .line 107
    iput-boolean v1, p0, Lorg/apache/commons/digester/SetNestedPropertiesRule;->allowUnknownChildElements:Z

    .line 109
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/apache/commons/digester/SetNestedPropertiesRule;->elementNames:Ljava/util/HashMap;

    .line 184
    array-length v2, p1

    :goto_0
    if-ge v1, v2, :cond_1

    .line 186
    array-length v3, p2

    if-ge v1, v3, :cond_0

    .line 187
    aget-object v3, p2, v1

    goto :goto_1

    :cond_0
    move-object v3, v0

    .line 190
    :goto_1
    iget-object v4, p0, Lorg/apache/commons/digester/SetNestedPropertiesRule;->elementNames:Ljava/util/HashMap;

    aget-object v5, p1, v1

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic access$100(Lorg/apache/commons/digester/SetNestedPropertiesRule;)Lorg/apache/commons/logging/Log;
    .locals 0

    .line 102
    iget-object p0, p0, Lorg/apache/commons/digester/SetNestedPropertiesRule;->log:Lorg/apache/commons/logging/Log;

    return-object p0
.end method

.method static synthetic access$200(Lorg/apache/commons/digester/SetNestedPropertiesRule;)Ljava/util/HashMap;
    .locals 0

    .line 102
    iget-object p0, p0, Lorg/apache/commons/digester/SetNestedPropertiesRule;->elementNames:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$300(Lorg/apache/commons/digester/SetNestedPropertiesRule;)Z
    .locals 0

    .line 102
    iget-boolean p0, p0, Lorg/apache/commons/digester/SetNestedPropertiesRule;->trimData:Z

    return p0
.end method

.method static synthetic access$400(Lorg/apache/commons/digester/SetNestedPropertiesRule;)Z
    .locals 0

    .line 102
    iget-boolean p0, p0, Lorg/apache/commons/digester/SetNestedPropertiesRule;->allowUnknownChildElements:Z

    return p0
.end method


# virtual methods
.method public addAlias(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 278
    iget-object v0, p0, Lorg/apache/commons/digester/SetNestedPropertiesRule;->elementNames:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public begin(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 250
    iget-object p1, p0, Lorg/apache/commons/digester/SetNestedPropertiesRule;->digester:Lorg/apache/commons/digester/Digester;

    invoke-virtual {p1}, Lorg/apache/commons/digester/Digester;->getRules()Lorg/apache/commons/digester/Rules;

    move-result-object p1

    .line 251
    new-instance p2, Lorg/apache/commons/digester/SetNestedPropertiesRule$AnyChildRule;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lorg/apache/commons/digester/SetNestedPropertiesRule$AnyChildRule;-><init>(Lorg/apache/commons/digester/SetNestedPropertiesRule;Lorg/apache/commons/digester/SetNestedPropertiesRule$1;)V

    .line 252
    iget-object p3, p0, Lorg/apache/commons/digester/SetNestedPropertiesRule;->digester:Lorg/apache/commons/digester/Digester;

    invoke-virtual {p2, p3}, Lorg/apache/commons/digester/SetNestedPropertiesRule$AnyChildRule;->setDigester(Lorg/apache/commons/digester/Digester;)V

    .line 253
    new-instance p3, Lorg/apache/commons/digester/SetNestedPropertiesRule$AnyChildRules;

    invoke-direct {p3, p0, p2}, Lorg/apache/commons/digester/SetNestedPropertiesRule$AnyChildRules;-><init>(Lorg/apache/commons/digester/SetNestedPropertiesRule;Lorg/apache/commons/digester/SetNestedPropertiesRule$AnyChildRule;)V

    .line 254
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/apache/commons/digester/SetNestedPropertiesRule;->digester:Lorg/apache/commons/digester/Digester;

    invoke-virtual {v0}, Lorg/apache/commons/digester/Digester;->getMatch()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2, p1}, Lorg/apache/commons/digester/SetNestedPropertiesRule$AnyChildRules;->init(Ljava/lang/String;Lorg/apache/commons/digester/Rules;)V

    .line 255
    iget-object p1, p0, Lorg/apache/commons/digester/SetNestedPropertiesRule;->digester:Lorg/apache/commons/digester/Digester;

    invoke-virtual {p1, p3}, Lorg/apache/commons/digester/Digester;->setRules(Lorg/apache/commons/digester/Rules;)V

    return-void
.end method

.method public body(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 265
    iget-object p1, p0, Lorg/apache/commons/digester/SetNestedPropertiesRule;->digester:Lorg/apache/commons/digester/Digester;

    invoke-virtual {p1}, Lorg/apache/commons/digester/Digester;->getRules()Lorg/apache/commons/digester/Rules;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/digester/SetNestedPropertiesRule$AnyChildRules;

    .line 266
    iget-object v0, p0, Lorg/apache/commons/digester/SetNestedPropertiesRule;->digester:Lorg/apache/commons/digester/Digester;

    invoke-virtual {p1}, Lorg/apache/commons/digester/SetNestedPropertiesRule$AnyChildRules;->getOldRules()Lorg/apache/commons/digester/Rules;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/commons/digester/Digester;->setRules(Lorg/apache/commons/digester/Rules;)V

    return-void
.end method

.method public getAllowUnknownChildElements()Z
    .locals 1

    .line 237
    iget-boolean v0, p0, Lorg/apache/commons/digester/SetNestedPropertiesRule;->allowUnknownChildElements:Z

    return v0
.end method

.method public getTrimData()Z
    .locals 1

    .line 214
    iget-boolean v0, p0, Lorg/apache/commons/digester/SetNestedPropertiesRule;->trimData:Z

    return v0
.end method

.method public setAllowUnknownChildElements(Z)V
    .locals 0

    .line 232
    iput-boolean p1, p0, Lorg/apache/commons/digester/SetNestedPropertiesRule;->allowUnknownChildElements:Z

    return-void
.end method

.method public setDigester(Lorg/apache/commons/digester/Digester;)V
    .locals 0

    .line 199
    invoke-super {p0, p1}, Lorg/apache/commons/digester/Rule;->setDigester(Lorg/apache/commons/digester/Digester;)V

    .line 200
    invoke-virtual {p1}, Lorg/apache/commons/digester/Digester;->getLogger()Lorg/apache/commons/logging/Log;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/digester/SetNestedPropertiesRule;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public setTrimData(Z)V
    .locals 0

    .line 209
    iput-boolean p1, p0, Lorg/apache/commons/digester/SetNestedPropertiesRule;->trimData:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 286
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "SetNestedPropertiesRule["

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "allowUnknownChildElements="

    .line 287
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 288
    iget-boolean v1, p0, Lorg/apache/commons/digester/SetNestedPropertiesRule;->allowUnknownChildElements:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, ", trimData="

    .line 289
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 290
    iget-boolean v1, p0, Lorg/apache/commons/digester/SetNestedPropertiesRule;->trimData:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, ", elementNames="

    .line 291
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 292
    iget-object v1, p0, Lorg/apache/commons/digester/SetNestedPropertiesRule;->elementNames:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, "]"

    .line 293
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 294
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
