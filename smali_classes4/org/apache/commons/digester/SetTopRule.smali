.class public Lorg/apache/commons/digester/SetTopRule;
.super Lorg/apache/commons/digester/Rule;
.source "SetTopRule.java"


# instance fields
.field protected methodName:Ljava/lang/String;

.field protected paramType:Ljava/lang/String;

.field protected useExactMatch:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 91
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/digester/SetTopRule;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 106
    invoke-direct {p0}, Lorg/apache/commons/digester/Rule;-><init>()V

    const/4 v0, 0x0

    .line 120
    iput-object v0, p0, Lorg/apache/commons/digester/SetTopRule;->methodName:Ljava/lang/String;

    .line 126
    iput-object v0, p0, Lorg/apache/commons/digester/SetTopRule;->paramType:Ljava/lang/String;

    const/4 v0, 0x0

    .line 131
    iput-boolean v0, p0, Lorg/apache/commons/digester/SetTopRule;->useExactMatch:Z

    .line 108
    iput-object p1, p0, Lorg/apache/commons/digester/SetTopRule;->methodName:Ljava/lang/String;

    .line 109
    iput-object p2, p0, Lorg/apache/commons/digester/SetTopRule;->paramType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/digester/Digester;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 56
    invoke-direct {p0, p2}, Lorg/apache/commons/digester/SetTopRule;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/digester/Digester;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 78
    invoke-direct {p0, p2, p3}, Lorg/apache/commons/digester/SetTopRule;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public end()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lorg/apache/commons/digester/SetTopRule;->digester:Lorg/apache/commons/digester/Digester;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/commons/digester/Digester;->peek(I)Ljava/lang/Object;

    move-result-object v0

    .line 182
    iget-object v2, p0, Lorg/apache/commons/digester/SetTopRule;->digester:Lorg/apache/commons/digester/Digester;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/apache/commons/digester/Digester;->peek(I)Ljava/lang/Object;

    move-result-object v2

    .line 184
    iget-object v4, p0, Lorg/apache/commons/digester/SetTopRule;->digester:Lorg/apache/commons/digester/Digester;

    iget-object v4, v4, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, ")"

    const-string v5, "("

    const-string v6, "[SetTopRule]{"

    if-nez v0, :cond_0

    .line 186
    iget-object v7, p0, Lorg/apache/commons/digester/SetTopRule;->digester:Lorg/apache/commons/digester/Digester;

    iget-object v7, v7, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/apache/commons/digester/SetTopRule;->digester:Lorg/apache/commons/digester/Digester;

    iget-object v6, v6, Lorg/apache/commons/digester/Digester;->match:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "} Call [NULL CHILD]."

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/apache/commons/digester/SetTopRule;->methodName:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v7, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_0

    .line 190
    :cond_0
    iget-object v7, p0, Lorg/apache/commons/digester/SetTopRule;->digester:Lorg/apache/commons/digester/Digester;

    iget-object v7, v7, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/apache/commons/digester/SetTopRule;->digester:Lorg/apache/commons/digester/Digester;

    iget-object v6, v6, Lorg/apache/commons/digester/Digester;->match:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "} Call "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/apache/commons/digester/SetTopRule;->methodName:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v7, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    new-array v4, v3, [Ljava/lang/Class;

    .line 198
    iget-object v5, p0, Lorg/apache/commons/digester/SetTopRule;->paramType:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 199
    iget-object v5, p0, Lorg/apache/commons/digester/SetTopRule;->digester:Lorg/apache/commons/digester/Digester;

    invoke-virtual {v5}, Lorg/apache/commons/digester/Digester;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/commons/digester/SetTopRule;->paramType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v4, v1

    goto :goto_1

    .line 202
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v4, v1

    .line 205
    :goto_1
    iget-boolean v5, p0, Lorg/apache/commons/digester/SetTopRule;->useExactMatch:Z

    if-eqz v5, :cond_3

    .line 207
    iget-object v5, p0, Lorg/apache/commons/digester/SetTopRule;->methodName:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v1

    invoke-static {v0, v5, v3, v4}, Lorg/apache/commons/beanutils/MethodUtils;->invokeExactMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    goto :goto_2

    .line 212
    :cond_3
    iget-object v5, p0, Lorg/apache/commons/digester/SetTopRule;->methodName:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v1

    invoke-static {v0, v5, v3, v4}, Lorg/apache/commons/beanutils/MethodUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    :goto_2
    return-void
.end method

.method public isExactMatch()Z
    .locals 1

    .line 158
    iget-boolean v0, p0, Lorg/apache/commons/digester/SetTopRule;->useExactMatch:Z

    return v0
.end method

.method public setExactMatch(Z)V
    .locals 0

    .line 171
    iput-boolean p1, p0, Lorg/apache/commons/digester/SetTopRule;->useExactMatch:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 225
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "SetTopRule["

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "methodName="

    .line 226
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 227
    iget-object v1, p0, Lorg/apache/commons/digester/SetTopRule;->methodName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ", paramType="

    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 229
    iget-object v1, p0, Lorg/apache/commons/digester/SetTopRule;->paramType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "]"

    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 231
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
