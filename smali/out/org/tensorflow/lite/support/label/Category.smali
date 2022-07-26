.class public final Lorg/tensorflow/lite/support/label/Category;
.super Ljava/lang/Object;
.source "Category.java"


# instance fields
.field private final displayName:Ljava/lang/String;

.field private final label:Ljava/lang/String;

.field private final score:F


# direct methods
.method public constructor <init>(Ljava/lang/String;F)V
    .registers 4
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "score"    # F

    .line 46
    const-string v0, ""

    invoke-direct {p0, p1, v0, p2}, Lorg/tensorflow/lite/support/label/Category;-><init>(Ljava/lang/String;Ljava/lang/String;F)V

    .line 47
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;F)V
    .registers 4
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "displayName"    # Ljava/lang/String;
    .param p3, "score"    # F

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/tensorflow/lite/support/label/Category;->label:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lorg/tensorflow/lite/support/label/Category;->displayName:Ljava/lang/String;

    .line 52
    iput p3, p0, Lorg/tensorflow/lite/support/label/Category;->score:F

    .line 53
    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;F)Lorg/tensorflow/lite/support/label/Category;
    .registers 4
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "score"    # F

    .line 40
    new-instance v0, Lorg/tensorflow/lite/support/label/Category;

    invoke-direct {v0, p0, p1, p2}, Lorg/tensorflow/lite/support/label/Category;-><init>(Ljava/lang/String;Ljava/lang/String;F)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 77
    instance-of v0, p1, Lorg/tensorflow/lite/support/label/Category;

    const/4 v1, 0x0

    if-eqz v0, :cond_2e

    .line 78
    move-object v0, p1

    check-cast v0, Lorg/tensorflow/lite/support/label/Category;

    .line 79
    .local v0, "other":Lorg/tensorflow/lite/support/label/Category;
    invoke-virtual {v0}, Lorg/tensorflow/lite/support/label/Category;->getLabel()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/tensorflow/lite/support/label/Category;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 80
    invoke-virtual {v0}, Lorg/tensorflow/lite/support/label/Category;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/tensorflow/lite/support/label/Category;->displayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 81
    invoke-virtual {v0}, Lorg/tensorflow/lite/support/label/Category;->getScore()F

    move-result v2

    iget v3, p0, Lorg/tensorflow/lite/support/label/Category;->score:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2c

    const/4 v1, 0x1

    goto :goto_2d

    :cond_2c
    nop

    .line 79
    :goto_2d
    return v1

    .line 83
    .end local v0    # "other":Lorg/tensorflow/lite/support/label/Category;
    :cond_2e
    return v1
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 2

    .line 67
    iget-object v0, p0, Lorg/tensorflow/lite/support/label/Category;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .registers 2

    .line 57
    iget-object v0, p0, Lorg/tensorflow/lite/support/label/Category;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getScore()F
    .registers 2

    .line 72
    iget v0, p0, Lorg/tensorflow/lite/support/label/Category;->score:F

    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 88
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lorg/tensorflow/lite/support/label/Category;->label:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/tensorflow/lite/support/label/Category;->displayName:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lorg/tensorflow/lite/support/label/Category;->score:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<Category \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/tensorflow/lite/support/label/Category;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" (displayName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/tensorflow/lite/support/label/Category;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" (score="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/tensorflow/lite/support/label/Category;->score:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ")>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
