.class public Lorg/apache/commons/digester/CallParamRule;
.super Lorg/apache/commons/digester/Rule;
.source "CallParamRule.java"


# instance fields
.field protected attributeName:Ljava/lang/String;

.field protected bodyTextStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected fromStack:Z

.field protected paramIndex:I

.field protected stackIndex:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 108
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/digester/CallParamRule;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 150
    invoke-direct {p0}, Lorg/apache/commons/digester/Rule;-><init>()V

    const/4 v0, 0x0

    .line 163
    iput-object v0, p0, Lorg/apache/commons/digester/CallParamRule;->attributeName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 169
    iput v0, p0, Lorg/apache/commons/digester/CallParamRule;->paramIndex:I

    .line 175
    iput-boolean v0, p0, Lorg/apache/commons/digester/CallParamRule;->fromStack:Z

    .line 180
    iput v0, p0, Lorg/apache/commons/digester/CallParamRule;->stackIndex:I

    .line 152
    iput p1, p0, Lorg/apache/commons/digester/CallParamRule;->paramIndex:I

    const/4 p1, 0x1

    .line 153
    iput-boolean p1, p0, Lorg/apache/commons/digester/CallParamRule;->fromStack:Z

    .line 154
    iput p2, p0, Lorg/apache/commons/digester/CallParamRule;->stackIndex:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 121
    invoke-direct {p0}, Lorg/apache/commons/digester/Rule;-><init>()V

    const/4 v0, 0x0

    .line 163
    iput-object v0, p0, Lorg/apache/commons/digester/CallParamRule;->attributeName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 169
    iput v0, p0, Lorg/apache/commons/digester/CallParamRule;->paramIndex:I

    .line 175
    iput-boolean v0, p0, Lorg/apache/commons/digester/CallParamRule;->fromStack:Z

    .line 180
    iput v0, p0, Lorg/apache/commons/digester/CallParamRule;->stackIndex:I

    .line 123
    iput p1, p0, Lorg/apache/commons/digester/CallParamRule;->paramIndex:I

    .line 124
    iput-object p2, p0, Lorg/apache/commons/digester/CallParamRule;->attributeName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1

    .line 135
    invoke-direct {p0}, Lorg/apache/commons/digester/Rule;-><init>()V

    const/4 v0, 0x0

    .line 163
    iput-object v0, p0, Lorg/apache/commons/digester/CallParamRule;->attributeName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 169
    iput v0, p0, Lorg/apache/commons/digester/CallParamRule;->paramIndex:I

    .line 175
    iput-boolean v0, p0, Lorg/apache/commons/digester/CallParamRule;->fromStack:Z

    .line 180
    iput v0, p0, Lorg/apache/commons/digester/CallParamRule;->stackIndex:I

    .line 137
    iput p1, p0, Lorg/apache/commons/digester/CallParamRule;->paramIndex:I

    .line 138
    iput-boolean p2, p0, Lorg/apache/commons/digester/CallParamRule;->fromStack:Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/digester/Digester;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 70
    invoke-direct {p0, p2}, Lorg/apache/commons/digester/CallParamRule;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/digester/Digester;ILjava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 90
    invoke-direct {p0, p2, p3}, Lorg/apache/commons/digester/CallParamRule;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public begin(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lorg/apache/commons/digester/CallParamRule;->attributeName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 203
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 205
    :cond_0
    iget-boolean p1, p0, Lorg/apache/commons/digester/CallParamRule;->fromStack:Z

    if-eqz p1, :cond_1

    .line 207
    iget-object p1, p0, Lorg/apache/commons/digester/CallParamRule;->digester:Lorg/apache/commons/digester/Digester;

    iget v0, p0, Lorg/apache/commons/digester/CallParamRule;->stackIndex:I

    invoke-virtual {p1, v0}, Lorg/apache/commons/digester/Digester;->peek(I)Ljava/lang/Object;

    move-result-object p1

    .line 209
    iget-object v0, p0, Lorg/apache/commons/digester/CallParamRule;->digester:Lorg/apache/commons/digester/Digester;

    iget-object v0, v0, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 211
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "[CallParamRule]{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 212
    iget-object v1, p0, Lorg/apache/commons/digester/CallParamRule;->digester:Lorg/apache/commons/digester/Digester;

    iget-object v1, v1, Lorg/apache/commons/digester/Digester;->match:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "} Save from stack; from stack?"

    .line 213
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v1, p0, Lorg/apache/commons/digester/CallParamRule;->fromStack:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, "; object="

    .line 214
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 215
    iget-object v1, p0, Lorg/apache/commons/digester/CallParamRule;->digester:Lorg/apache/commons/digester/Digester;

    iget-object v1, v1, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    .line 226
    iget-object v0, p0, Lorg/apache/commons/digester/CallParamRule;->digester:Lorg/apache/commons/digester/Digester;

    invoke-virtual {v0}, Lorg/apache/commons/digester/Digester;->peekParams()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 227
    iget v1, p0, Lorg/apache/commons/digester/CallParamRule;->paramIndex:I

    aput-object p1, v0, v1

    :cond_3
    return-void
.end method

.method public body(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 240
    iget-object v0, p0, Lorg/apache/commons/digester/CallParamRule;->attributeName:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/commons/digester/CallParamRule;->fromStack:Z

    if-nez v0, :cond_1

    .line 244
    iget-object v0, p0, Lorg/apache/commons/digester/CallParamRule;->bodyTextStack:Ljava/util/Stack;

    if-nez v0, :cond_0

    .line 245
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/digester/CallParamRule;->bodyTextStack:Ljava/util/Stack;

    .line 247
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/digester/CallParamRule;->bodyTextStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public end(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 257
    iget-object p1, p0, Lorg/apache/commons/digester/CallParamRule;->bodyTextStack:Ljava/util/Stack;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/Stack;->empty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 259
    iget-object p1, p0, Lorg/apache/commons/digester/CallParamRule;->digester:Lorg/apache/commons/digester/Digester;

    invoke-virtual {p1}, Lorg/apache/commons/digester/Digester;->peekParams()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    .line 260
    iget p2, p0, Lorg/apache/commons/digester/CallParamRule;->paramIndex:I

    iget-object v0, p0, Lorg/apache/commons/digester/CallParamRule;->bodyTextStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, p1, p2

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 270
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "CallParamRule["

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "paramIndex="

    .line 271
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 272
    iget v1, p0, Lorg/apache/commons/digester/CallParamRule;->paramIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", attributeName="

    .line 273
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 274
    iget-object v1, p0, Lorg/apache/commons/digester/CallParamRule;->attributeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ", from stack="

    .line 275
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 276
    iget-boolean v1, p0, Lorg/apache/commons/digester/CallParamRule;->fromStack:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, "]"

    .line 277
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 278
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
