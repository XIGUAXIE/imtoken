.class public Lorg/apache/commons/digester/PathCallParamRule;
.super Lorg/apache/commons/digester/Rule;
.source "PathCallParamRule.java"


# instance fields
.field protected paramIndex:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 44
    invoke-direct {p0}, Lorg/apache/commons/digester/Rule;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Lorg/apache/commons/digester/PathCallParamRule;->paramIndex:I

    .line 46
    iput p1, p0, Lorg/apache/commons/digester/PathCallParamRule;->paramIndex:I

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

    .line 74
    invoke-virtual {p0}, Lorg/apache/commons/digester/PathCallParamRule;->getDigester()Lorg/apache/commons/digester/Digester;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/digester/Digester;->getMatch()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 77
    iget-object p2, p0, Lorg/apache/commons/digester/PathCallParamRule;->digester:Lorg/apache/commons/digester/Digester;

    invoke-virtual {p2}, Lorg/apache/commons/digester/Digester;->peekParams()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    .line 78
    iget p3, p0, Lorg/apache/commons/digester/PathCallParamRule;->paramIndex:I

    aput-object p1, p2, p3

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 89
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "PathCallParamRule["

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "paramIndex="

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    iget v1, p0, Lorg/apache/commons/digester/PathCallParamRule;->paramIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "]"

    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
