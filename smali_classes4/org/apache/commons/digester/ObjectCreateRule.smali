.class public Lorg/apache/commons/digester/ObjectCreateRule;
.super Lorg/apache/commons/digester/Rule;
.source "ObjectCreateRule.java"


# instance fields
.field protected attributeName:Ljava/lang/String;

.field protected className:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 133
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/digester/ObjectCreateRule;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 121
    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/digester/ObjectCreateRule;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 166
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lorg/apache/commons/digester/ObjectCreateRule;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 147
    invoke-direct {p0}, Lorg/apache/commons/digester/Rule;-><init>()V

    const/4 v0, 0x0

    .line 176
    iput-object v0, p0, Lorg/apache/commons/digester/ObjectCreateRule;->attributeName:Ljava/lang/String;

    .line 182
    iput-object v0, p0, Lorg/apache/commons/digester/ObjectCreateRule;->className:Ljava/lang/String;

    .line 149
    iput-object p1, p0, Lorg/apache/commons/digester/ObjectCreateRule;->className:Ljava/lang/String;

    .line 150
    iput-object p2, p0, Lorg/apache/commons/digester/ObjectCreateRule;->attributeName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/digester/Digester;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/digester/Digester;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 67
    invoke-direct {p0, p2}, Lorg/apache/commons/digester/ObjectCreateRule;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/digester/Digester;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 50
    invoke-direct {p0, p2}, Lorg/apache/commons/digester/ObjectCreateRule;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/digester/Digester;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/digester/Digester;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 110
    invoke-direct {p0, p2, p3}, Lorg/apache/commons/digester/ObjectCreateRule;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/digester/Digester;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 88
    invoke-direct {p0, p2, p3}, Lorg/apache/commons/digester/ObjectCreateRule;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public begin(Lorg/xml/sax/Attributes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lorg/apache/commons/digester/ObjectCreateRule;->className:Ljava/lang/String;

    .line 198
    iget-object v1, p0, Lorg/apache/commons/digester/ObjectCreateRule;->attributeName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 199
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    move-object v0, p1

    .line 204
    :cond_0
    iget-object p1, p0, Lorg/apache/commons/digester/ObjectCreateRule;->digester:Lorg/apache/commons/digester/Digester;

    iget-object p1, p1, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {p1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 205
    iget-object p1, p0, Lorg/apache/commons/digester/ObjectCreateRule;->digester:Lorg/apache/commons/digester/Digester;

    iget-object p1, p1, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ObjectCreateRule]{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/commons/digester/ObjectCreateRule;->digester:Lorg/apache/commons/digester/Digester;

    iget-object v2, v2, Lorg/apache/commons/digester/Digester;->match:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "}New "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 210
    :cond_1
    iget-object p1, p0, Lorg/apache/commons/digester/ObjectCreateRule;->digester:Lorg/apache/commons/digester/Digester;

    invoke-virtual {p1}, Lorg/apache/commons/digester/Digester;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 211
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    .line 212
    iget-object v0, p0, Lorg/apache/commons/digester/ObjectCreateRule;->digester:Lorg/apache/commons/digester/Digester;

    invoke-virtual {v0, p1}, Lorg/apache/commons/digester/Digester;->push(Ljava/lang/Object;)V

    return-void
.end method

.method public end()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lorg/apache/commons/digester/ObjectCreateRule;->digester:Lorg/apache/commons/digester/Digester;

    invoke-virtual {v0}, Lorg/apache/commons/digester/Digester;->pop()Ljava/lang/Object;

    move-result-object v0

    .line 224
    iget-object v1, p0, Lorg/apache/commons/digester/ObjectCreateRule;->digester:Lorg/apache/commons/digester/Digester;

    iget-object v1, v1, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    iget-object v1, p0, Lorg/apache/commons/digester/ObjectCreateRule;->digester:Lorg/apache/commons/digester/Digester;

    iget-object v1, v1, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ObjectCreateRule]{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/commons/digester/ObjectCreateRule;->digester:Lorg/apache/commons/digester/Digester;

    iget-object v3, v3, Lorg/apache/commons/digester/Digester;->match:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "} Pop "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 238
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "ObjectCreateRule["

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "className="

    .line 239
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 240
    iget-object v1, p0, Lorg/apache/commons/digester/ObjectCreateRule;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ", attributeName="

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 242
    iget-object v1, p0, Lorg/apache/commons/digester/ObjectCreateRule;->attributeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "]"

    .line 243
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 244
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
