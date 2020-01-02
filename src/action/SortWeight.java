package action;

import entity.UserInfo;

import java.util.Comparator;


public class SortWeight implements Comparator {

    public int compare(Object arg0, Object arg1) {

        if(((UserInfo)arg0).getWeight()>((UserInfo)arg1).getWeight()){
            return 1;
        }else{
            return -1;
        }
    }

}
