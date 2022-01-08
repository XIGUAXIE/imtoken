.class public Lorg/apache/commons/digester/ObjectParamRule;
.super Lorg/apache/commons/digester/Rule;
.source "ObjectParamRule.java"


# instance fields
.field protected attributeName:Ljava/lang/String;

.field protected param:Ljava/lang/Object;

.field protected paramIndex:I


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/digester/ObjectParamRule;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 64
    invoke-direct {p0}, Lorg/apache/commons/digester/Rule;-><init>()V

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lorg/apache/commons/digester/ObjectParamRule;->attributeName:Ljava/lang/String;

    const/4 v1, 0x0

    .line 81
    iput v1, p0, Lorg/apache/commons/digester/ObjectParamRule;->paramIndex:I

    .line 86
    iput-object v0, p0, Lorg/apache/commons/digester/ObjectParamRule;->param:Ljava/lang/Object;

    .line 65
    iput p1, p0, Lorg/apache/commons/digester/ObjectParamRule;->paramIndex:I

    .line 66
    iput-object p2, p0, Lorg/apache/commons/digester/ObjectParamRule;->attributeName:Ljava/lang/String;

    .line 67
    iput-object p3, p0, Lorg/apache/commons/digester/ObjectParamRule;->param:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public begin(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 100
    iget-object p1, p0, Lorg/apache/commons/digester/ObjectParamRule;->digester:Lorg/apache/commons/digester/Digester;

    invoke-virtual {p1}, Lorg/apache/commons/digester/Digester;->peekParams()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    .line 102
    iget-object p2, p0, Lorg/apache/commons/digester/ObjectParamRule;->attributeName:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 103
    invoke-interface {p3, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 105
    iget p2, p0, Lorg/apache/commons/digester/ObjectParamRule;->paramIndex:I

    iget-object p3, p0, Lorg/apache/commons/digester/ObjectParamRule;->param:Ljava/lang/Object;

    aput-object p3, p1, p2

    goto :goto_0

    .line 110
    :cond_0
    iget p2, p0, Lorg/apache/commons/digester/ObjectParamRule;->paramIndex:I

    iget-object p3, p0, Lorg/apache/commons/digester/ObjectParamRule;->param:Ljava/lang/Object;

    aput-object p3, p1, p2

    :cond_1
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 119
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "ObjectParamRule["

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "paramIndex="

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    iget v1, p0, Lorg/apache/commons/digester/ObjectParamRule;->paramIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", attributeName="

    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    iget-object v1, p0, Lorg/apache/commons/digester/ObjectParamRule;->attributeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ", param="

    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    iget-object v1, p0, Lorg/apache/commons/digester/ObjectParamRule;->param:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, "]"

    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
