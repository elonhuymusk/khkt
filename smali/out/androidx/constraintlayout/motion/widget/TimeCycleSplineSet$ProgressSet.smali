.class Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$ProgressSet;
.super Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
.source "TimeCycleSplineSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProgressSet"
.end annotation


# instance fields
.field mNoMethod:Z


# direct methods
.method constructor <init>()V
    .registers 2

    .line 381
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;-><init>()V

    .line 382
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$ProgressSet;->mNoMethod:Z

    return-void
.end method


# virtual methods
.method public setProperty(Landroid/view/View;FJLandroidx/constraintlayout/motion/widget/KeyCache;)Z
    .registers 19
    .param p1, "view"    # Landroid/view/View;
    .param p2, "t"    # F
    .param p3, "time"    # J
    .param p5, "cache"    # Landroidx/constraintlayout/motion/widget/KeyCache;

    .line 386
    move-object v7, p0

    move-object v8, p1

    const-string v9, "unable to setProgress"

    const-string v10, "SplineSet"

    instance-of v0, v8, Landroidx/constraintlayout/motion/widget/MotionLayout;

    if-eqz v0, :cond_1c

    .line 387
    move-object v0, v8

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionLayout;

    move-object v1, p0

    move v2, p2

    move-wide/from16 v3, p3

    move-object v5, p1

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$ProgressSet;->get(FJLandroid/view/View;Landroidx/constraintlayout/motion/widget/KeyCache;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    goto :goto_5d

    .line 389
    :cond_1c
    iget-boolean v0, v7, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$ProgressSet;->mNoMethod:Z

    const/4 v11, 0x0

    if-eqz v0, :cond_22

    .line 390
    return v11

    .line 392
    :cond_22
    const/4 v1, 0x0

    .line 394
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    :try_start_24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "setProgress"

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v11

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_34
    .catch Ljava/lang/NoSuchMethodException; {:try_start_24 .. :try_end_34} :catch_37

    move-object v1, v0

    .line 397
    move-object v12, v1

    goto :goto_3b

    .line 395
    :catch_37
    move-exception v0

    .line 396
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    iput-boolean v2, v7, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$ProgressSet;->mNoMethod:Z

    move-object v12, v1

    .line 398
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .local v12, "method":Ljava/lang/reflect/Method;
    :goto_3b
    if-eqz v12, :cond_5d

    .line 400
    :try_start_3d
    new-array v0, v2, [Ljava/lang/Object;

    move-object v1, p0

    move v2, p2

    move-wide/from16 v3, p3

    move-object v5, p1

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$ProgressSet;->get(FJLandroid/view/View;Landroidx/constraintlayout/motion/widget/KeyCache;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v0, v11

    invoke-virtual {v12, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_53
    .catch Ljava/lang/IllegalAccessException; {:try_start_3d .. :try_end_53} :catch_59
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3d .. :try_end_53} :catch_54

    goto :goto_5d

    .line 403
    :catch_54
    move-exception v0

    .line 404
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {v10, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5d

    .line 401
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_59
    move-exception v0

    .line 402
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v10, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 408
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    .end local v12    # "method":Ljava/lang/reflect/Method;
    :cond_5d
    :goto_5d
    iget-boolean v0, v7, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$ProgressSet;->mContinue:Z

    return v0
.end method
