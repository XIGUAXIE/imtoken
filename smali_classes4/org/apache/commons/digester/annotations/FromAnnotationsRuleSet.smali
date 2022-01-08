.class public final Lorg/apache/commons/digester/annotations/FromAnnotationsRuleSet;
.super Ljava/lang/Object;
.source "FromAnnotationsRuleSet.java"

# interfaces
.implements Lorg/apache/commons/digester/RuleSet;


# instance fields
.field private final digesterLoader:Lorg/apache/commons/digester/annotations/DigesterLoader;

.field private final mappedClasses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private volatile namespaceURI:Ljava/lang/String;

.field private final rules:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/apache/commons/digester/annotations/AnnotationRuleProvider<",
            "Ljava/lang/annotation/Annotation;",
            "Ljava/lang/reflect/AnnotatedElement;",
            "Lorg/apache/commons/digester/Rule;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/apache/commons/digester/annotations/DigesterLoader;)V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/digester/annotations/FromAnnotationsRuleSet;->rules:Ljava/util/Map;

    .line 52
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/digester/annotations/FromAnnotationsRuleSet;->mappedClasses:Ljava/util/Set;

    .line 67
    iput-object p1, p0, Lorg/apache/commons/digester/annotations/FromAnnotationsRuleSet;->digesterLoader:Lorg/apache/commons/digester/annotations/DigesterLoader;

    return-void
.end method

.method private getRules()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/apache/commons/digester/annotations/AnnotationRuleProvider<",
            "Ljava/lang/annotation/Annotation;",
            "Ljava/lang/reflect/AnnotatedElement;",
            "Lorg/apache/commons/digester/Rule;",
            ">;>;>;"
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lorg/apache/commons/digester/annotations/FromAnnotationsRuleSet;->rules:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method protected addMappedClass(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lorg/apache/commons/digester/annotations/FromAnnotationsRuleSet;->mappedClasses:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addRuleInstances(Lorg/apache/commons/digester/Digester;)V
    .locals 5

    .line 77
    iget-object v0, p0, Lorg/apache/commons/digester/annotations/FromAnnotationsRuleSet;->rules:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 78
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 79
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/digester/annotations/AnnotationRuleProvider;

    .line 80
    invoke-interface {v3}, Lorg/apache/commons/digester/annotations/AnnotationRuleProvider;->get()Lorg/apache/commons/digester/Rule;

    move-result-object v3

    .line 81
    iget-object v4, p0, Lorg/apache/commons/digester/annotations/FromAnnotationsRuleSet;->namespaceURI:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 82
    iget-object v4, p0, Lorg/apache/commons/digester/annotations/FromAnnotationsRuleSet;->namespaceURI:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/apache/commons/digester/Rule;->setNamespaceURI(Ljava/lang/String;)V

    .line 84
    :cond_1
    invoke-virtual {p1, v2, v3}, Lorg/apache/commons/digester/Digester;->addRule(Ljava/lang/String;Lorg/apache/commons/digester/Rule;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public addRuleProvider(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/annotation/Annotation;Ljava/lang/reflect/AnnotatedElement;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            "E::",
            "Ljava/lang/reflect/AnnotatedElement;",
            "R:",
            "Lorg/apache/commons/digester/Rule;",
            "T::",
            "Lorg/apache/commons/digester/annotations/AnnotationRuleProvider<",
            "TA;TE;TR;>;>(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;TA;TE;)V"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lorg/apache/commons/digester/annotations/FromAnnotationsRuleSet;->digesterLoader:Lorg/apache/commons/digester/annotations/DigesterLoader;

    invoke-virtual {v0}, Lorg/apache/commons/digester/annotations/DigesterLoader;->getAnnotationRuleProviderFactory()Lorg/apache/commons/digester/annotations/spi/AnnotationRuleProviderFactory;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/apache/commons/digester/annotations/spi/AnnotationRuleProviderFactory;->newInstance(Ljava/lang/Class;)Lorg/apache/commons/digester/annotations/AnnotationRuleProvider;

    move-result-object p2

    .line 117
    invoke-interface {p2, p3, p4}, Lorg/apache/commons/digester/annotations/AnnotationRuleProvider;->init(Ljava/lang/annotation/Annotation;Ljava/lang/reflect/AnnotatedElement;)V

    .line 118
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/digester/annotations/FromAnnotationsRuleSet;->addRuleProvider(Ljava/lang/String;Lorg/apache/commons/digester/annotations/AnnotationRuleProvider;)V

    return-void
.end method

.method public addRuleProvider(Ljava/lang/String;Lorg/apache/commons/digester/annotations/AnnotationRuleProvider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/commons/digester/annotations/AnnotationRuleProvider<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            "+",
            "Ljava/lang/reflect/AnnotatedElement;",
            "+",
            "Lorg/apache/commons/digester/Rule;",
            ">;)V"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lorg/apache/commons/digester/annotations/FromAnnotationsRuleSet;->rules:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lorg/apache/commons/digester/annotations/FromAnnotationsRuleSet;->rules:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    goto :goto_0

    .line 135
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 136
    iget-object v1, p0, Lorg/apache/commons/digester/annotations/FromAnnotationsRuleSet;->rules:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v0

    .line 139
    :goto_0
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addRules(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lorg/apache/commons/digester/annotations/FromAnnotationsRuleSet;->digesterLoader:Lorg/apache/commons/digester/annotations/DigesterLoader;

    invoke-virtual {v0, p1, p0}, Lorg/apache/commons/digester/annotations/DigesterLoader;->addRulesTo(Ljava/lang/Class;Lorg/apache/commons/digester/annotations/FromAnnotationsRuleSet;)V

    return-void
.end method

.method public addRulesProviderFrom(Lorg/apache/commons/digester/annotations/FromAnnotationsRuleSet;)V
    .locals 1

    .line 175
    iget-object v0, p0, Lorg/apache/commons/digester/annotations/FromAnnotationsRuleSet;->rules:Ljava/util/Map;

    invoke-direct {p1}, Lorg/apache/commons/digester/annotations/FromAnnotationsRuleSet;->getRules()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 1

    .line 214
    iget-object v0, p0, Lorg/apache/commons/digester/annotations/FromAnnotationsRuleSet;->namespaceURI:Ljava/lang/String;

    return-object v0
.end method

.method public getProvider(Ljava/lang/String;Ljava/lang/Class;)Lorg/apache/commons/digester/annotations/AnnotationRuleProvider;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/digester/annotations/AnnotationRuleProvider<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            "+",
            "Ljava/lang/reflect/AnnotatedElement;",
            "+",
            "Lorg/apache/commons/digester/Rule;",
            ">;>(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lorg/apache/commons/digester/annotations/FromAnnotationsRuleSet;->rules:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 159
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/digester/annotations/FromAnnotationsRuleSet;->rules:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/digester/annotations/AnnotationRuleProvider;

    .line 160
    invoke-virtual {p2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 161
    invoke-virtual {p2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/digester/annotations/AnnotationRuleProvider;

    return-object p1

    :cond_2
    return-object v1
.end method

.method protected mapsClass(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lorg/apache/commons/digester/annotations/FromAnnotationsRuleSet;->mappedClasses:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public setNamespaceURI(Ljava/lang/String;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lorg/apache/commons/digester/annotations/FromAnnotationsRuleSet;->namespaceURI:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ mappedClasses="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/digester/annotations/FromAnnotationsRuleSet;->mappedClasses:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rules="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/digester/annotations/FromAnnotationsRuleSet;->rules:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", namespaceURI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/digester/annotations/FromAnnotationsRuleSet;->namespaceURI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
